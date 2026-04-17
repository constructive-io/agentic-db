/**
 * Embedding Pipeline Integration Test
 *
 * Tests the full embedding workflow with REAL Ollama (no mocks):
 *   1. Insert a few records into PostgreSQL
 *   2. Generate real embeddings via Ollama nomic-embed-text
 *   3. Store embeddings as pgvector columns
 *   4. Verify cosine similarity search returns correct ordering
 *
 * Requires:
 *   - PostgreSQL with pgvector extension (constructiveio/postgres-plus:18)
 *   - Ollama running with nomic-embed-text model pulled
 *
 * Environment:
 *   - OLLAMA_URL (default: http://localhost:11434)
 *   - PGHOST, PGPORT, PGUSER, PGPASSWORD (standard PG env vars)
 */
import path from 'path';
import { getConnectionsObject, seed } from 'graphile-test';
import type { PgTestClient } from 'pgsql-test';
import OllamaClient from '@agentic-kit/ollama';

// Embedding + search can be slow; allow 5 minutes
jest.setTimeout(300000);

const seedRoot = path.join(__dirname, '..', '__fixtures__', 'seed');
const sql = (file: string) => path.join(seedRoot, file);

// Real pgpm package — pgsql-test's seed.pgpm() walks the `requires` chain in
// agentic-db.control and deploys the real schema (no hand-rolled SQL).
const AGENTIC_DB_PKG = path.resolve(__dirname, '..', '..', 'agentic-db');

const SCHEMAS = ['agentic_db_app_public'];

const OLLAMA_URL = process.env.OLLAMA_URL || 'http://localhost:11434';
const EMBEDDING_MODEL = process.env.EMBEDDING_MODEL || 'nomic-embed-text';

const ollama = new OllamaClient(OLLAMA_URL);

/**
 * Generate a real embedding via Ollama
 */
async function embed(text: string): Promise<number[]> {
  return ollama.generateEmbedding(text, EMBEDDING_MODEL);
}

/**
 * Format a number[] vector for PostgreSQL pgvector
 */
function vectorToSql(vec: number[]): string {
  return `[${vec.join(',')}]`;
}

let db: PgTestClient;
let teardown: () => Promise<void>;

beforeAll(async () => {
  const connections = await getConnectionsObject(
    {
      schemas: SCHEMAS,
      useRoot: true,
      authRole: 'postgres',
    },
    [
      seed.pgpm(AGENTIC_DB_PKG),
      seed.sqlfile([sql('test-bootstrap.sql'), sql('test-data.sql')]),
    ],
  );

  db = connections.db;
  teardown = connections.teardown;
});

afterAll(async () => {
  if (teardown) {
    await teardown();
  }
});

describe('Ollama Connectivity', () => {
  it('should connect to Ollama and generate an embedding', async () => {
    const vec = await embed('hello world');

    expect(Array.isArray(vec)).toBe(true);
    expect(vec.length).toBe(768); // nomic-embed-text produces 768-dim vectors
    expect(typeof vec[0]).toBe('number');
  });
});

describe('Embed and Store Records', () => {
  it('should embed a contact and store the vector in PostgreSQL', async () => {
    const text = 'Alice Smith. Software Engineer specializing in distributed systems and Postgres.';
    const vec = await embed(text);

    // Store embedding on the seeded Alice contact
    const CONTACT_ALICE = '11111111-1111-1111-1111-111111111111';
    await db.client.query(
      `UPDATE "agentic_db_app_public".contacts
       SET embedding_text = $1
       WHERE id = $2`,
      [text, CONTACT_ALICE],
    );

    // Store the actual vector in a contact_chunk row
    await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts_chunks
         (contacts_id, content, chunk_index, embedding)
       VALUES ($1, $2, 0, $3::vector)`,
      [CONTACT_ALICE, text, vectorToSql(vec)],
    );

    // Verify it was stored
    const result = await db.client.query(
      `SELECT embedding IS NOT NULL AS has_embedding, content
       FROM "agentic_db_app_public".contacts_chunks
       WHERE contacts_id = $1`,
      [CONTACT_ALICE],
    );

    expect(result.rows).toHaveLength(1);
    expect(result.rows[0].has_embedding).toBe(true);
    expect(result.rows[0].content).toContain('Alice Smith');
  });

  it('should embed a note and store the vector in PostgreSQL', async () => {
    const text = 'Meeting kickoff notes: discussed project timeline, milestones, and database architecture.';
    const vec = await embed(text);

    const NOTE_KICKOFF = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa';
    await db.client.query(
      `UPDATE "agentic_db_app_public".notes
       SET embedding_text = $1
       WHERE id = $2`,
      [text, NOTE_KICKOFF],
    );

    await db.client.query(
      `INSERT INTO "agentic_db_app_public".notes_chunks
         (notes_id, content, chunk_index, embedding)
       VALUES ($1, $2, 0, $3::vector)`,
      [NOTE_KICKOFF, text, vectorToSql(vec)],
    );

    const result = await db.client.query(
      `SELECT embedding IS NOT NULL AS has_embedding, content
       FROM "agentic_db_app_public".notes_chunks
       WHERE notes_id = $1`,
      [NOTE_KICKOFF],
    );

    expect(result.rows).toHaveLength(1);
    expect(result.rows[0].has_embedding).toBe(true);
  });

  it('should embed a new contact with distinct content', async () => {
    const text = 'Bob Jones. Chef and restaurant owner specializing in Italian cuisine.';
    const vec = await embed(text);

    const CONTACT_BOB = '22222222-2222-2222-2222-222222222222';
    await db.client.query(
      `UPDATE "agentic_db_app_public".contacts
       SET embedding_text = $1
       WHERE id = $2`,
      [text, CONTACT_BOB],
    );

    await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts_chunks
         (contacts_id, content, chunk_index, embedding)
       VALUES ($1, $2, 0, $3::vector)`,
      [CONTACT_BOB, text, vectorToSql(vec)],
    );

    const result = await db.client.query(
      `SELECT embedding IS NOT NULL AS has_embedding
       FROM "agentic_db_app_public".contacts_chunks
       WHERE contacts_id = $1`,
      [CONTACT_BOB],
    );

    expect(result.rows).toHaveLength(1);
    expect(result.rows[0].has_embedding).toBe(true);
  });
});

describe('Cosine Similarity Search with Real Embeddings', () => {
  it('should rank a software engineering query closer to Alice than Bob', async () => {
    // Query about software — should match Alice (engineer) over Bob (chef)
    const queryVec = await embed('distributed systems software engineer PostgreSQL');

    const result = await db.client.query(
      `SELECT cc.id, c.first_name, cc.content,
              1 - (cc.embedding <=> $1::vector) AS similarity
       FROM "agentic_db_app_public".contacts_chunks cc
       JOIN "agentic_db_app_public".contacts c ON c.id = cc.contacts_id
       WHERE cc.embedding IS NOT NULL
       ORDER BY cc.embedding <=> $1::vector
       LIMIT 5`,
      [vectorToSql(queryVec)],
    );

    expect(result.rows.length).toBeGreaterThanOrEqual(2);

    // Alice should come first for a software engineering query
    expect(result.rows[0].first_name).toBe('Alice');
    expect(parseFloat(result.rows[0].similarity)).toBeGreaterThan(0);

    // Bob should have lower similarity
    const bobRow = result.rows.find((r: { first_name: string }) => r.first_name === 'Bob');
    expect(bobRow).toBeTruthy();
    expect(parseFloat(result.rows[0].similarity)).toBeGreaterThan(parseFloat(bobRow!.similarity));
  });

  it('should rank a cooking query closer to Bob than Alice', async () => {
    // Query about cooking — should match Bob (chef) over Alice (engineer)
    const queryVec = await embed('Italian cuisine restaurant chef cooking');

    const result = await db.client.query(
      `SELECT cc.id, c.first_name, cc.content,
              1 - (cc.embedding <=> $1::vector) AS similarity
       FROM "agentic_db_app_public".contacts_chunks cc
       JOIN "agentic_db_app_public".contacts c ON c.id = cc.contacts_id
       WHERE cc.embedding IS NOT NULL
       ORDER BY cc.embedding <=> $1::vector
       LIMIT 5`,
      [vectorToSql(queryVec)],
    );

    expect(result.rows.length).toBeGreaterThanOrEqual(2);

    // Bob should come first for a cooking query
    expect(result.rows[0].first_name).toBe('Bob');
  });

  it('should find note chunks by semantic search', async () => {
    // Query about meetings — should match the kickoff note
    const queryVec = await embed('project meeting timeline milestones');

    const result = await db.client.query(
      `SELECT nc.id, nc.content,
              1 - (nc.embedding <=> $1::vector) AS similarity
       FROM "agentic_db_app_public".notes_chunks nc
       WHERE nc.embedding IS NOT NULL
       ORDER BY nc.embedding <=> $1::vector
       LIMIT 3`,
      [vectorToSql(queryVec)],
    );

    expect(result.rows.length).toBeGreaterThanOrEqual(1);
    expect(result.rows[0].content).toContain('kickoff');
    expect(parseFloat(result.rows[0].similarity)).toBeGreaterThan(0.3);
  });
});

describe('Cross-table Similarity Search', () => {
  it('should search across contact and note chunks together', async () => {
    const queryVec = await embed('database architecture PostgreSQL');

    // Search contacts
    const contacts = await db.client.query(
      `SELECT 'contact' AS source, c.first_name AS label,
              1 - (cc.embedding <=> $1::vector) AS similarity
       FROM "agentic_db_app_public".contacts_chunks cc
       JOIN "agentic_db_app_public".contacts c ON c.id = cc.contacts_id
       WHERE cc.embedding IS NOT NULL`,
      [vectorToSql(queryVec)],
    );

    // Search notes
    const notes = await db.client.query(
      `SELECT 'note' AS source, nc.content AS label,
              1 - (nc.embedding <=> $1::vector) AS similarity
       FROM "agentic_db_app_public".notes_chunks nc
       WHERE nc.embedding IS NOT NULL`,
      [vectorToSql(queryVec)],
    );

    const all = [...contacts.rows, ...notes.rows]
      .sort((a, b) => parseFloat(b.similarity) - parseFloat(a.similarity));

    expect(all.length).toBeGreaterThanOrEqual(3);

    // All results should have positive similarity scores
    for (const row of all) {
      expect(parseFloat(row.similarity)).toBeGreaterThan(0);
    }

    // The top result should be relevant to databases (Alice or note about DB architecture)
    const topLabel = all[0].label as string;
    expect(
      topLabel.toLowerCase().includes('postgres') ||
      topLabel.toLowerCase().includes('database') ||
      topLabel.toLowerCase().includes('alice') ||
      topLabel.toLowerCase().includes('engineer')
    ).toBe(true);
  });
});
