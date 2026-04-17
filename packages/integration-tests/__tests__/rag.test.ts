/**
 * RAG Integration Test
 *
 * Tests the full RAG pipeline with REAL Ollama (no mocks) using the
 * generated ORM + ConstructivePreset + codegen pipeline:
 *
 *   1. Run codegen against live PostGraphile schema
 *   2. Create records via ORM (contacts, notes)
 *   3. Generate real embeddings via Ollama nomic-embed-text
 *   4. Store embeddings via ORM update
 *   5. Search via ORM vectorEmbedding condition
 *   6. Verify semantic ranking is correct
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
import type { GraphQLQueryFnObj } from 'graphile-test';
import type { PgTestClient } from 'pgsql-test';
import { ConstructivePreset } from 'graphile-settings';
import OllamaClient from '@agentic-kit/ollama';
import { runCodegenAndLoad } from './helpers/codegen-helper';
import { GraphileTestAdapter } from './helpers/graphile-adapter';

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

describe('RAG integration (ORM + real Ollama)', () => {
  let db: PgTestClient;
  let teardown: () => Promise<void>;
  let query: GraphQLQueryFnObj;
  let orm: Record<string, any>;

  beforeAll(async () => {
    const connections = await getConnectionsObject(
      {
        schemas: SCHEMAS,
        useRoot: true,
        authRole: 'postgres',
        preset: {
          extends: [ConstructivePreset],
        },
      },
      [
        seed.pgpm(AGENTIC_DB_PKG),
        seed.sqlfile([sql('test-bootstrap.sql'), sql('test-data.sql')]),
      ],
    );

    db = connections.db;
    teardown = connections.teardown;
    query = connections.query;

    // Run the full codegen pipeline against the live schema
    const { createClient } = await runCodegenAndLoad(query, 'rag');

    // Create the ORM client with the GraphileTestAdapter
    const adapter = new GraphileTestAdapter(query);
    orm = createClient({ adapter });
  });

  afterAll(async () => {
    if (teardown) {
      await teardown();
    }
  });

  /** Extract the first connection/mutation result regardless of field name */
  function unwrapData(data: any): any {
    return Object.values(data)[0];
  }

  /** Assert result.ok and log errors if it fails */
  function expectOk(result: any, label?: string) {
    if (!result.ok) {
      console.error(
        `[${label ?? 'ORM'}] query failed:`,
        JSON.stringify(result.errors, null, 2),
      );
    }
    expect(result.ok).toBe(true);
  }

  // =========================================================================
  // 1. Ollama connectivity
  // =========================================================================
  describe('Ollama connectivity', () => {
    it('should connect to Ollama and produce a 768-dim embedding', async () => {
      const vec = await embed('hello world');
      expect(Array.isArray(vec)).toBe(true);
      expect(vec.length).toBe(768);
      expect(typeof vec[0]).toBe('number');
    });
  });

  // =========================================================================
  // 2. Create records via ORM + embed via Ollama + store via ORM
  // =========================================================================
  describe('embed records via ORM', () => {
    it('should create a contact, embed it, and store the embedding via ORM update', async () => {
      // Create a contact via ORM
      const createRes = await orm.contact
        .create({
          data: {
            firstName: 'Carol',
            lastName: 'Engineer',
            headline: 'Senior Distributed Systems Engineer',
            bio: 'Expert in PostgreSQL internals, distributed consensus algorithms, and vector databases. Published author on MVCC and WAL replication.',
          },
          select: { id: true, firstName: true },
        })
        .execute();

      expectOk(createRes, 'contact.create(Carol)');
      const carol = unwrapData(createRes.data).contact;
      expect(carol.firstName).toBe('Carol');

      // Generate real embedding via Ollama
      const text = 'Carol Engineer. Senior Distributed Systems Engineer. Expert in PostgreSQL internals, distributed consensus algorithms, and vector databases.';
      const vec = await embed(text);
      expect(vec.length).toBe(768);

      // Store embedding via ORM update
      const updateRes = await orm.contact
        .update({
          where: { id: carol.id },
          data: {
            embedding: vec as any,
            embeddingText: text,
          },
          select: { id: true, embeddingText: true },
        })
        .execute();

      expectOk(updateRes, 'contact.update(Carol embedding)');
      const updated = unwrapData(updateRes.data).contact;
      expect(updated.embeddingText).toContain('Carol');
    });

    it('should create a second contact with a very different domain', async () => {
      const createRes = await orm.contact
        .create({
          data: {
            firstName: 'Dave',
            lastName: 'Chef',
            headline: 'Executive Pastry Chef',
            bio: 'Award-winning pastry chef specializing in French patisserie. Former head chef at Le Cordon Bleu. Expert in chocolate tempering and sugar work.',
          },
          select: { id: true, firstName: true },
        })
        .execute();

      expectOk(createRes, 'contact.create(Dave)');
      const dave = unwrapData(createRes.data).contact;

      const text = 'Dave Chef. Executive Pastry Chef. Award-winning pastry chef specializing in French patisserie and chocolate tempering.';
      const vec = await embed(text);

      const updateRes = await orm.contact
        .update({
          where: { id: dave.id },
          data: {
            embedding: vec as any,
            embeddingText: text,
          },
          select: { id: true },
        })
        .execute();

      expectOk(updateRes, 'contact.update(Dave embedding)');
    });

    it('should create and embed a note', async () => {
      const createRes = await orm.note
        .create({
          data: {
            content: 'Architecture review: we decided to use pgvector with HNSW indexes for approximate nearest neighbor search. The embedding pipeline will use Ollama nomic-embed-text for 768-dimensional vectors.',
          },
          select: { id: true, content: true },
        })
        .execute();

      expectOk(createRes, 'note.create');
      const note = unwrapData(createRes.data).note;

      const text = note.content;
      const vec = await embed(text);

      const updateRes = await orm.note
        .update({
          where: { id: note.id },
          data: {
            embedding: vec as any,
            embeddingText: text,
          },
          select: { id: true },
        })
        .execute();

      expectOk(updateRes, 'note.update(embedding)');
    });

    it('should create and embed a chunk for a contact', async () => {
      // Find Carol to link the chunk
      const findRes = await orm.contact
        .findMany({
          where: { firstName: { equalTo: 'Carol' } },
          select: { id: true },
        })
        .execute();

      expectOk(findRes, 'contact.findMany(Carol)');
      const carolId = unwrapData(findRes.data).nodes[0].id;

      const chunkText = 'Carol presented at PGConf on advanced indexing strategies for vector similarity search using HNSW and IVFFlat algorithms in pgvector.';
      const vec = await embed(chunkText);

      const createRes = await orm.contactChunk
        .create({
          data: {
            contactId: carolId,
            content: chunkText,
            chunkIndex: 0,
            embedding: vec as any,
          },
          select: { id: true, content: true, chunkIndex: true },
        })
        .execute();

      expectOk(createRes, 'contactChunk.create');
      const chunk = unwrapData(createRes.data).contactChunk;
      expect(chunk.content).toContain('Carol');
      expect(chunk.chunkIndex).toBe(0);
    });
  });

  // =========================================================================
  // 3. Vector similarity search via ORM
  // =========================================================================
  describe('vector similarity search via ORM', () => {
    it('should rank a database query closer to Carol than Dave', async () => {
      const queryVec = await embed('PostgreSQL distributed systems vector database engineer');

      const result = await orm.contact
        .findMany({
          where: {
            vectorEmbedding: {
              vector: queryVec,
              metric: 'COSINE',
              distance: 2.0,
            },
          },
          first: 5,
          select: {
            id: true,
            firstName: true,
            lastName: true,
            embeddingVectorDistance: true,
          },
        })
        .execute();

      expectOk(result, 'contact.findMany(vector search - database)');
      const nodes = unwrapData(result.data).nodes;

      // Should have results
      expect(nodes.length).toBeGreaterThanOrEqual(2);

      // Carol (engineer) should rank higher than Dave (chef) for a DB query
      const carol = nodes.find((n: any) => n.firstName === 'Carol');
      const dave = nodes.find((n: any) => n.firstName === 'Dave');
      expect(carol).toBeDefined();
      expect(dave).toBeDefined();

      // Lower distance = more similar
      expect(carol.embeddingVectorDistance).toBeLessThan(dave.embeddingVectorDistance);
    });

    it('should rank a cooking query closer to Dave than Carol', async () => {
      const queryVec = await embed('French pastry chef chocolate dessert cooking');

      const result = await orm.contact
        .findMany({
          where: {
            vectorEmbedding: {
              vector: queryVec,
              metric: 'COSINE',
              distance: 2.0,
            },
          },
          first: 5,
          select: {
            id: true,
            firstName: true,
            embeddingVectorDistance: true,
          },
        })
        .execute();

      expectOk(result, 'contact.findMany(vector search - cooking)');
      const nodes = unwrapData(result.data).nodes;

      expect(nodes.length).toBeGreaterThanOrEqual(2);

      const carol = nodes.find((n: any) => n.firstName === 'Carol');
      const dave = nodes.find((n: any) => n.firstName === 'Dave');
      expect(carol).toBeDefined();
      expect(dave).toBeDefined();

      // Dave (chef) should rank higher (lower distance) for a cooking query
      expect(dave.embeddingVectorDistance).toBeLessThan(carol.embeddingVectorDistance);
    });

    it('should find notes via vector search', async () => {
      const queryVec = await embed('pgvector HNSW embedding pipeline architecture');

      const result = await orm.note
        .findMany({
          where: {
            vectorEmbedding: {
              vector: queryVec,
              metric: 'COSINE',
              distance: 2.0,
            },
          },
          first: 5,
          select: {
            id: true,
            content: true,
            embeddingVectorDistance: true,
          },
        })
        .execute();

      expectOk(result, 'note.findMany(vector search)');
      const nodes = unwrapData(result.data).nodes;

      // Should find at least the architecture note we created
      expect(nodes.length).toBeGreaterThanOrEqual(1);

      // The top note should be our architecture note
      expect(nodes[0].content).toContain('pgvector');
      // Similarity should be meaningful (distance < 1.0 means > 50% cosine similarity)
      expect(nodes[0].embeddingVectorDistance).toBeLessThan(1.0);
    });

    it('should search chunk tables via ORM vector search', async () => {
      const queryVec = await embed('PGConf indexing strategies HNSW IVFFlat');

      const result = await orm.contactChunk
        .findMany({
          where: {
            vectorEmbedding: {
              vector: queryVec,
              metric: 'COSINE',
              distance: 2.0,
            },
          },
          first: 5,
          select: {
            id: true,
            content: true,
            chunkIndex: true,
            contactId: true,
            embeddingVectorDistance: true,
          },
        })
        .execute();

      expectOk(result, 'contactChunk.findMany(vector search)');
      const nodes = unwrapData(result.data).nodes;

      expect(nodes.length).toBeGreaterThanOrEqual(1);
      // The chunk about PGConf should be the top result
      expect(nodes[0].content).toContain('PGConf');
      expect(nodes[0].embeddingVectorDistance).toBeLessThan(1.0);
    });
  });

  // =========================================================================
  // 4. Cross-table search (contacts + notes via ORM)
  // =========================================================================
  describe('cross-table search via ORM', () => {
    it('should search across contacts and notes and merge results', async () => {
      const queryVec = await embed('vector database architecture PostgreSQL');

      // Search contacts
      const contactRes = await orm.contact
        .findMany({
          where: {
            vectorEmbedding: {
              vector: queryVec,
              metric: 'COSINE',
              distance: 2.0,
            },
          },
          first: 5,
          select: {
            id: true,
            firstName: true,
            embeddingVectorDistance: true,
          },
        })
        .execute();

      expectOk(contactRes, 'cross-table: contacts');
      const contacts = unwrapData(contactRes.data).nodes;

      // Search notes
      const noteRes = await orm.note
        .findMany({
          where: {
            vectorEmbedding: {
              vector: queryVec,
              metric: 'COSINE',
              distance: 2.0,
            },
          },
          first: 5,
          select: {
            id: true,
            content: true,
            embeddingVectorDistance: true,
          },
        })
        .execute();

      expectOk(noteRes, 'cross-table: notes');
      const notes = unwrapData(noteRes.data).nodes;

      // Merge and sort by distance (ascending = most similar first)
      const all = [
        ...contacts.map((c: any) => ({
          source: 'contact',
          label: c.firstName,
          distance: c.embeddingVectorDistance,
        })),
        ...notes.map((n: any) => ({
          source: 'note',
          label: (n.content || '').slice(0, 40),
          distance: n.embeddingVectorDistance,
        })),
      ].sort((a, b) => a.distance - b.distance);

      // Should have results from both tables
      expect(all.length).toBeGreaterThanOrEqual(2);

      // All results should have valid distances
      for (const row of all) {
        expect(typeof row.distance).toBe('number');
        expect(row.distance).toBeGreaterThan(0);
        expect(row.distance).toBeLessThan(2.0);
      }

      // Carol (DB engineer) and the architecture note should be near the top
      const topLabels = all.slice(0, 3).map((r) => r.label.toLowerCase());
      const hasRelevant = topLabels.some(
        (l) =>
          l.includes('carol') ||
          l.includes('pgvector') ||
          l.includes('architect'),
      );
      expect(hasRelevant).toBe(true);
    });
  });
});
