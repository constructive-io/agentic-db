/**
 * Embedding Integration Test for agentic-db
 *
 * Tests pgvector storage and retrieval for contacts and notes,
 * following the pattern from constructive-io/ollama-test-suite.
 *
 * Uses pgsql-test for raw SQL access against a pgpm-deployed database.
 */
import path from 'path';
import { getConnectionsObject, seed } from 'graphile-test';
import type { PgTestClient } from 'pgsql-test';

jest.setTimeout(120000);

const seedRoot = path.join(__dirname, '..', '__fixtures__', 'seed');
const sql = (file: string) => path.join(seedRoot, file);

// Real pgpm package — pgsql-test's seed.pgpm() walks the `requires` chain in
// agentic-db.control and deploys the real schema (no hand-rolled SQL).
const AGENTIC_DB_PKG = path.resolve(__dirname, '..', '..', 'agentic-db');

const SCHEMAS = ['agentic_db_app_public'];

const CONTACT_ALICE = '11111111-1111-1111-1111-111111111111';
const NOTE_KICKOFF = 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa';

// Generate a fake 768-dim vector for testing (no ollama needed)
const fakeVector = (seed: number): string => {
  const vals = Array.from({ length: 768 }, (_, i) =>
    Math.sin(seed * 1000 + i) * 0.5,
  );
  return `[${vals.join(',')}]`;
};

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

  // Root client: the exported single-user package strips grants/RLS.
  db = connections.pg;
  teardown = connections.teardown;
});

afterAll(async () => {
  if (teardown) {
    await teardown();
  }
});

describe('pgvector Storage and Retrieval', () => {
  it('should store and retrieve an embedding on a contact', async () => {
    const vec = fakeVector(1);

    await db.client.query(
      `UPDATE "agentic_db_app_public".contacts
       SET embedding_text = $1
       WHERE id = $2`,
      ['Alice Smith, Software Engineer at Acme Corp', CONTACT_ALICE],
    );

    const result = await db.client.query(
      `SELECT id, first_name, embedding_text
       FROM "agentic_db_app_public".contacts
       WHERE id = $1`,
      [CONTACT_ALICE],
    );

    expect(result.rows).toHaveLength(1);
    expect(result.rows[0].first_name).toBe('Alice');
    expect(result.rows[0].embedding_text).toBeTruthy();
  });

  it('should store and retrieve an embedding on a note', async () => {
    await db.client.query(
      `UPDATE "agentic_db_app_public".notes
       SET embedding_text = $1
       WHERE id = $2`,
      ['Meeting notes from project kickoff - discussed timeline and milestones', NOTE_KICKOFF],
    );

    const result = await db.client.query(
      `SELECT id, content, embedding_text
       FROM "agentic_db_app_public".notes
       WHERE id = $1`,
      [NOTE_KICKOFF],
    );

    expect(result.rows).toHaveLength(1);
    expect(result.rows[0].embedding_text).toBeTruthy();
  });
});

describe('Contact Chunks', () => {
  it('should create chunks for a contact and cascade delete', async () => {
    // Create a contact for chunk testing
    const contactRes = await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts (first_name, last_name)
       VALUES ('Chunk', 'Test')
       RETURNING id`,
    );
    const contactId = contactRes.rows[0].id;

    // Insert chunks
    await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts_chunks
         (contacts_id, content, chunk_index)
       VALUES
         ($1, 'Chunk 1: Background info', 0),
         ($1, 'Chunk 2: Recent work', 1),
         ($1, 'Chunk 3: Skills', 2)`,
      [contactId],
    );

    const chunks = await db.client.query(
      `SELECT * FROM "agentic_db_app_public".contacts_chunks
       WHERE contacts_id = $1
       ORDER BY chunk_index`,
      [contactId],
    );

    expect(chunks.rows).toHaveLength(3);
    expect(chunks.rows[0].content).toBe('Chunk 1: Background info');
    expect(chunks.rows[2].chunk_index).toBe(2);

    // Cascade delete: removing the contact should delete chunks
    await db.client.query(
      `DELETE FROM "agentic_db_app_public".contacts WHERE id = $1`,
      [contactId],
    );

    const remainingChunks = await db.client.query(
      `SELECT * FROM "agentic_db_app_public".contacts_chunks
       WHERE contacts_id = $1`,
      [contactId],
    );

    expect(remainingChunks.rows).toHaveLength(0);
  });
});

describe('Note Chunks', () => {
  it('should create chunks for a note and cascade delete', async () => {
    // Create a note for chunk testing
    const noteRes = await db.client.query(
      `INSERT INTO "agentic_db_app_public".notes (content)
       VALUES ('Long document content for chunking')
       RETURNING id`,
    );
    const noteId = noteRes.rows[0].id;

    // Insert chunks
    await db.client.query(
      `INSERT INTO "agentic_db_app_public".notes_chunks
         (notes_id, content, chunk_index)
       VALUES
         ($1, 'Note chunk 1', 0),
         ($1, 'Note chunk 2', 1)`,
      [noteId],
    );

    const chunks = await db.client.query(
      `SELECT * FROM "agentic_db_app_public".notes_chunks
       WHERE notes_id = $1
       ORDER BY chunk_index`,
      [noteId],
    );

    expect(chunks.rows).toHaveLength(2);

    // Cascade delete
    await db.client.query(
      `DELETE FROM "agentic_db_app_public".notes WHERE id = $1`,
      [noteId],
    );

    const remainingChunks = await db.client.query(
      `SELECT * FROM "agentic_db_app_public".notes_chunks
       WHERE notes_id = $1`,
      [noteId],
    );

    expect(remainingChunks.rows).toHaveLength(0);
  });
});

describe('Cosine Similarity Search', () => {
  it('should find similar chunks by vector distance', async () => {
    // Create two contacts with chunks that have embeddings
    const c1 = await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts (first_name, last_name)
       VALUES ('VecAlice', 'Smith')
       RETURNING id`,
    );
    const c2 = await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts (first_name, last_name)
       VALUES ('VecBob', 'Jones')
       RETURNING id`,
    );
    const c1Id = c1.rows[0].id;
    const c2Id = c2.rows[0].id;

    const vec1 = fakeVector(1);
    const vec2 = fakeVector(2);

    await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts_chunks
         (contacts_id, content, chunk_index, embedding)
       VALUES ($1, 'Alice background', 0, $2::vector)`,
      [c1Id, vec1],
    );

    await db.client.query(
      `INSERT INTO "agentic_db_app_public".contacts_chunks
         (contacts_id, content, chunk_index, embedding)
       VALUES ($1, 'Bob background', 0, $2::vector)`,
      [c2Id, vec2],
    );

    // Query using cosine distance (smaller = more similar)
    const queryVec = fakeVector(1); // same seed as Alice -> should be closest
    const result = await db.client.query(
      `SELECT cc.id, c.first_name, 1 - (cc.embedding <=> $1::vector) AS similarity
       FROM "agentic_db_app_public".contacts_chunks cc
       JOIN "agentic_db_app_public".contacts c ON c.id = cc.contacts_id
       WHERE cc.embedding IS NOT NULL
       ORDER BY cc.embedding <=> $1::vector
       LIMIT 5`,
      [queryVec],
    );

    expect(result.rows.length).toBeGreaterThan(0);
    // Alice's chunk should be first (exact match vector)
    expect(result.rows[0].first_name).toBe('VecAlice');
    expect(parseFloat(result.rows[0].similarity)).toBeCloseTo(1.0, 2);
  });
});
