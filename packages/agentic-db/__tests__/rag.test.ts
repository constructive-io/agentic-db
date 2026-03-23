/**
 * RAG Integration Tests — Real Schema + Real Ollama
 *
 * Tests the full RAG pipeline against the REAL agentic-db schema
 * deployed via pgpm (NOT hand-crafted SQL fixtures):
 *
 *   1. pgsql-test reads pgpm.plan and deploys the real agentic-db schema
 *   2. GraphQLTestAdapter wraps the PostGraphile query function
 *   3. @agentic-db/sdk createClient provides the ORM
 *   4. Real Ollama (nomic-embed-text) generates embeddings
 *
 * Flow:
 *   sign_up → insert contacts → verify chunks → embed via Ollama → vector search
 *
 * Requires:
 *   - Docker with constructiveio/postgres-plus:18
 *   - Ollama running with nomic-embed-text model pulled
 *   - pgpm CLI installed (npm install -g pgpm@latest)
 *
 * Environment:
 *   - OLLAMA_URL (default: http://localhost:11434)
 *   - Standard PG env vars (PGHOST, PGPORT, PGUSER, PGPASSWORD)
 */
jest.setTimeout(300000);
process.env.LOG_SCOPE = '@constructive-io/graphql-test';

import { getConnections, GraphQLTestAdapter } from '@constructive-io/graphql-test';
import type { GraphQLQueryFn } from '@constructive-io/graphql-test';
// Use 'any' for PgTestClient to avoid version mismatch between pgsql-test@2.x and @constructive-io/graphql-test's pgsql-test@4.x
type PgTestClient = any;
import { createClient } from '@agentic-db/sdk';
import OllamaClient from '@agentic-kit/ollama';

const SCHEMAS = [
  'agentic_db_app_public',
  'agentic_db_auth_public',
  'agentic_db_users_public',
];

const OLLAMA_URL = process.env.OLLAMA_URL || 'http://localhost:11434';
const EMBEDDING_MODEL = process.env.EMBEDDING_MODEL || 'nomic-embed-text';

let db: PgTestClient;
let pg: PgTestClient;
let query: GraphQLQueryFn;
let teardown: () => Promise<void>;
let sdk: ReturnType<typeof createClient>;
let ollama: OllamaClient;

// Track IDs across test blocks (no beforeEach/afterEach rollback — data persists)
let userId: string;
let carolId: string;
let daveId: string;
let noteId: string;
let chunkId: string;

beforeAll(async () => {
  const connections = await getConnections({
    schemas: SCHEMAS,
    authRole: 'anonymous',
  });
  ({ db, pg, query, teardown } = connections);

  sdk = createClient({ adapter: new GraphQLTestAdapter(query) });
  ollama = new OllamaClient(OLLAMA_URL);
});

afterAll(async () => {
  if (teardown) await teardown();
});

describe('RAG Integration (real schema + real Ollama)', () => {
  // =========================================================================
  // 1. Create an account via sign_up
  // =========================================================================
  describe('account creation', () => {
    it('should sign up a new user via agentic_db_auth_public.sign_up', async () => {
      const result = await query(
        `mutation SignUp($email: String!, $password: String!) {
          signUp(input: { email: $email, password: $password }) {
            result {
              userId
              accessToken
            }
          }
        }`,
        { email: 'rag-test@example.com', password: 'testpassword123' },
      );

      expect(result.errors).toBeUndefined();
      expect(result.data).toBeDefined();

      const signUpData = (result.data as any).signUp.result;
      userId = signUpData.userId;
      expect(userId).toBeDefined();
      expect(signUpData.accessToken).toBeDefined();

      // Set authenticated context for subsequent ORM operations
      db.setContext({
        role: 'authenticated',
        'jwt.claims.user_id': userId,
      });
    });
  });

  // =========================================================================
  // 2. Insert contacts via ORM
  // =========================================================================
  describe('insert contacts', () => {
    it('should create Carol (database engineer) via ORM', async () => {
      const result = await sdk.contact
        .create({
          data: {
            entityId: userId,
            firstName: 'Carol',
            lastName: 'Engineer',
            headline: 'Senior Distributed Systems Engineer',
            bio: 'Expert in PostgreSQL internals, distributed consensus algorithms, and vector databases. Published author on MVCC and WAL replication.',
          },
          select: { id: true, firstName: true, lastName: true },
        })
        .execute();

      expect(result.ok).toBe(true);
      const contact = (result.data as any)?.createContact?.contact;
      expect(contact?.firstName).toBe('Carol');
      carolId = contact.id;
    });

    it('should create Dave (pastry chef) via ORM', async () => {
      const result = await sdk.contact
        .create({
          data: {
            entityId: userId,
            firstName: 'Dave',
            lastName: 'Chef',
            headline: 'Executive Pastry Chef',
            bio: 'Award-winning pastry chef specializing in French patisserie. Former head chef at Le Cordon Bleu. Expert in chocolate tempering and sugar work.',
          },
          select: { id: true, firstName: true },
        })
        .execute();

      expect(result.ok).toBe(true);
      daveId = (result.data as any)?.createContact?.contact?.id;
      expect(daveId).toBeDefined();
    });

    it('should create a note via ORM', async () => {
      const result = await sdk.note
        .create({
          data: {
            entityId: userId,
            content:
              'Architecture review: we decided to use pgvector with HNSW indexes for approximate nearest neighbor search. The embedding pipeline will use Ollama nomic-embed-text for 768-dimensional vectors.',
          },
          select: { id: true, content: true },
        })
        .execute();

      expect(result.ok).toBe(true);
      noteId = (result.data as any)?.createNote?.note?.id;
      expect(noteId).toBeDefined();
    });
  });

  // =========================================================================
  // 3. Verify chunks can be created
  // =========================================================================
  describe('chunk creation', () => {
    it('should create a chunk for Carol', async () => {
      const result = await sdk.contactChunk
        .create({
          data: {
            entityId: userId,
            contactId: carolId,
            content:
              'Carol presented at PGConf on advanced indexing strategies for vector similarity search using HNSW and IVFFlat algorithms in pgvector.',
            chunkIndex: 0,
          },
          select: { id: true, content: true, chunkIndex: true },
        })
        .execute();

      expect(result.ok).toBe(true);
      const chunk = (result.data as any)?.createContactChunk?.contactChunk;
      expect(chunk?.content).toContain('Carol');
      expect(chunk?.chunkIndex).toBe(0);
      chunkId = chunk.id;
    });
  });

  // =========================================================================
  // 4. Embed via real Ollama
  // =========================================================================
  describe('embedding via real Ollama', () => {
    it('should connect to Ollama and produce a 768-dim embedding', async () => {
      const vec = await ollama.generateEmbedding('hello world', EMBEDDING_MODEL);
      expect(Array.isArray(vec)).toBe(true);
      expect(vec.length).toBe(768);
      expect(typeof vec[0]).toBe('number');
    });

    it('should embed Carol and store the embedding via ORM', async () => {
      const text =
        'Carol Engineer. Senior Distributed Systems Engineer. Expert in PostgreSQL internals, distributed consensus algorithms, and vector databases.';
      const vec = await ollama.generateEmbedding(text, EMBEDDING_MODEL);
      expect(vec.length).toBe(768);

      const result = await sdk.contact
        .update({
          where: { id: carolId },
          data: {
            embedding: vec as any,
            embeddingText: text,
          },
          select: { id: true, embeddingText: true },
        })
        .execute();

      expect(result.ok).toBe(true);
      const updated = (result.data as any)?.updateContact?.contact;
      expect(updated?.embeddingText).toContain('Carol');
    });

    it('should embed Dave and store the embedding via ORM', async () => {
      const text =
        'Dave Chef. Executive Pastry Chef. Award-winning pastry chef specializing in French patisserie and chocolate tempering.';
      const vec = await ollama.generateEmbedding(text, EMBEDDING_MODEL);

      const result = await sdk.contact
        .update({
          where: { id: daveId },
          data: {
            embedding: vec as any,
            embeddingText: text,
          },
          select: { id: true },
        })
        .execute();

      expect(result.ok).toBe(true);
    });

    it('should embed the note and store the embedding via ORM', async () => {
      const text =
        'Architecture review: we decided to use pgvector with HNSW indexes for approximate nearest neighbor search. The embedding pipeline will use Ollama nomic-embed-text for 768-dimensional vectors.';
      const vec = await ollama.generateEmbedding(text, EMBEDDING_MODEL);

      const result = await sdk.note
        .update({
          where: { id: noteId },
          data: {
            embedding: vec as any,
            embeddingText: text,
          },
          select: { id: true },
        })
        .execute();

      expect(result.ok).toBe(true);
    });

    it('should embed the chunk and store the embedding via ORM', async () => {
      const text =
        'Carol presented at PGConf on advanced indexing strategies for vector similarity search using HNSW and IVFFlat algorithms in pgvector.';
      const vec = await ollama.generateEmbedding(text, EMBEDDING_MODEL);

      const result = await sdk.contactChunk
        .update({
          where: { id: chunkId },
          data: {
            embedding: vec as any,
          },
          select: { id: true },
        })
        .execute();

      expect(result.ok).toBe(true);
    });
  });

  // =========================================================================
  // 5. Search via vector similarity
  // =========================================================================
  describe('vector similarity search', () => {
    it('should rank a database query closer to Carol than Dave', async () => {
      const queryVec = await ollama.generateEmbedding(
        'PostgreSQL distributed systems vector database engineer',
        EMBEDDING_MODEL,
      );

      const result = await sdk.contact
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

      expect(result.ok).toBe(true);
      const nodes = (result.data as any)?.contacts?.nodes;
      expect(nodes?.length).toBeGreaterThanOrEqual(2);

      const carol = nodes.find((n: any) => n.firstName === 'Carol');
      const dave = nodes.find((n: any) => n.firstName === 'Dave');
      expect(carol).toBeDefined();
      expect(dave).toBeDefined();

      // Carol (engineer) should rank higher (lower distance) for a DB query
      expect(carol.embeddingVectorDistance).toBeLessThan(
        dave.embeddingVectorDistance,
      );
    });

    it('should rank a cooking query closer to Dave than Carol', async () => {
      const queryVec = await ollama.generateEmbedding(
        'French pastry chef chocolate dessert cooking',
        EMBEDDING_MODEL,
      );

      const result = await sdk.contact
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

      expect(result.ok).toBe(true);
      const nodes = (result.data as any)?.contacts?.nodes;
      expect(nodes?.length).toBeGreaterThanOrEqual(2);

      const carol = nodes.find((n: any) => n.firstName === 'Carol');
      const dave = nodes.find((n: any) => n.firstName === 'Dave');
      expect(carol).toBeDefined();
      expect(dave).toBeDefined();

      // Dave (chef) should rank higher (lower distance) for a cooking query
      expect(dave.embeddingVectorDistance).toBeLessThan(
        carol.embeddingVectorDistance,
      );
    });

    it('should find notes via vector search', async () => {
      const queryVec = await ollama.generateEmbedding(
        'pgvector HNSW embedding pipeline architecture',
        EMBEDDING_MODEL,
      );

      const result = await sdk.note
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

      expect(result.ok).toBe(true);
      const nodes = (result.data as any)?.notes?.nodes;
      expect(nodes?.length).toBeGreaterThanOrEqual(1);
      expect(nodes[0].content).toContain('pgvector');
      expect(nodes[0].embeddingVectorDistance).toBeLessThan(1.0);
    });

    it('should search chunk tables via vector search', async () => {
      const queryVec = await ollama.generateEmbedding(
        'PGConf indexing strategies HNSW IVFFlat',
        EMBEDDING_MODEL,
      );

      const result = await sdk.contactChunk
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
            embeddingVectorDistance: true,
          },
        })
        .execute();

      expect(result.ok).toBe(true);
      const nodes = (result.data as any)?.contactChunks?.nodes;
      expect(nodes?.length).toBeGreaterThanOrEqual(1);
      expect(nodes[0].content).toContain('PGConf');
      expect(nodes[0].embeddingVectorDistance).toBeLessThan(1.0);
    });

    it('should search across contacts and notes (cross-table)', async () => {
      const queryVec = await ollama.generateEmbedding(
        'vector database architecture PostgreSQL',
        EMBEDDING_MODEL,
      );

      // Search contacts
      const contactRes = await sdk.contact
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

      // Search notes
      const noteRes = await sdk.note
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

      expect(contactRes.ok).toBe(true);
      expect(noteRes.ok).toBe(true);

      const contacts = (contactRes.data as any)?.contacts?.nodes ?? [];
      const notes = (noteRes.data as any)?.notes?.nodes ?? [];

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
