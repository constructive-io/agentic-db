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
 *   sign_up -> insert contacts -> verify chunks -> embed via Ollama -> vector search
 *
 * Modeled after:
 *   constructive-db/application/app/__tests__/gql.test.ts
 *   constructive-db/application/app/__tests__/database-provision-graphql.test.ts
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
import { createClient } from '@agentic-db/sdk';
import OllamaClient from '@agentic-kit/ollama';

const SCHEMAS = [
  'agentic_db_app_public',
  'agentic_db_auth_public',
  'agentic_db_users_public',
];

const OLLAMA_URL = process.env.OLLAMA_URL || 'http://localhost:11434';
const EMBEDDING_MODEL = process.env.EMBEDDING_MODEL || 'nomic-embed-text';

let db: any;
let pg: any;
let query: GraphQLQueryFn;
let teardown: () => Promise<void>;

beforeAll(async () => {
  const connections = await getConnections({
    schemas: SCHEMAS,
    authRole: 'anonymous',
  });
  ({ db, pg, query, teardown } = connections);

  // Enable users to be immediately active after sign_up.
  // The default fixture seeds is_verified=false, is_approved=false which means
  // the app membership won't be active, the SPRT won't be populated, and
  // entity_membership RLS policies will block all writes.
  await pg.query(
    `UPDATE "agentic_db_memberships_public".app_membership_defaults
     SET is_verified = true, is_approved = true`
  );

  // The contacts/notes tables have AFTER INSERT triggers that call
  // app_jobs.add_job() to enqueue background embedding/chunking jobs.
  // In the test DB the jobs module isn't deployed, so we create a no-op stub
  // and grant the authenticated role access to it.
  await pg.query(`
    CREATE OR REPLACE FUNCTION app_jobs.add_job(
      _database_id uuid, _task text, _payload jsonb
    ) RETURNS void AS $$ BEGIN END; $$ LANGUAGE plpgsql;
    GRANT USAGE ON SCHEMA app_jobs TO authenticated;
    GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA app_jobs TO authenticated;
  `);
});

afterAll(async () => {
  if (teardown) await teardown();
});

// graphile-test wraps queries in SAVEPOINTs which require a surrounding transaction.
// beforeEach/afterEach from PgTestClient provides that transaction wrapper.
beforeEach(() => db.beforeEach());
afterEach(() => db.afterEach());

describe('RAG Integration (real schema + real Ollama)', () => {
  it('should connect to Ollama and produce a 768-dim embedding', async () => {
    const ollama = new OllamaClient(OLLAMA_URL);
    const vec = await ollama.generateEmbedding('hello world', EMBEDDING_MODEL);
    expect(Array.isArray(vec)).toBe(true);
    expect(vec.length).toBe(768);
    expect(typeof vec[0]).toBe('number');
  });

  it('completes full RAG pipeline: sign_up -> contacts -> chunks -> embed -> search', async () => {
    const sdk = createClient({ adapter: new GraphQLTestAdapter(query) });
    const ollama = new OllamaClient(OLLAMA_URL);

    // =====================================================================
    // 1. Create an account via sign_up (raw GraphQL — ORM doesn't expose custom mutations)
    // =====================================================================
    const signUpResult = await query(
      `mutation SignUp($input: SignUpInput!) {
        signUp(input: $input) {
          result {
            userId
            accessToken
          }
        }
      }`,
      { input: { email: 'rag-test@example.com', password: 'testpassword123' } },
    );

    const signUpData = (signUpResult as any)?.data?.signUp?.result;
    if (!signUpData) {
      throw new Error(`signUp failed: ${JSON.stringify(signUpResult)}`);
    }

    const { accessToken, userId } = signUpData;
    expect(accessToken).toBeDefined();
    expect(userId).toBeDefined();

    db.setContext({
      role: 'authenticated',
      'jwt.claims.user_id': userId,
    });

    // =====================================================================
    // 2. Insert contacts via ORM
    // =====================================================================

    // Carol -- database engineer
    const carolResult = await sdk.contact
      .create({
        data: {
          entityId: userId!,
          firstName: 'Carol',
          lastName: 'Engineer',
          headline: 'Senior Distributed Systems Engineer',
          bio: 'Expert in PostgreSQL internals, distributed consensus algorithms, and vector databases. Published author on MVCC and WAL replication.',
        },
        select: { id: true, firstName: true, lastName: true },
      })
      .execute();

    if (!carolResult.ok) {
      throw new Error(`createContact (Carol) failed: ${JSON.stringify(carolResult.errors)}`);
    }
    const carol = carolResult.data.createContact.contact;
    expect(carol.firstName).toBe('Carol');
    const carolId = carol.id!;

    // Register Carol's contact ID in org_memberships_sprt so that
    // contacts_chunks RLS (which checks contacts_id ∈ entity_id) passes.
    await pg.query(
      `INSERT INTO agentic_db_memberships_private.org_memberships_sprt
         (actor_id, entity_id) VALUES ($1, $2)`,
      [userId, carolId],
    );

    // Dave -- pastry chef
    const daveResult = await sdk.contact
      .create({
        data: {
          entityId: userId!,
          firstName: 'Dave',
          lastName: 'Chef',
          headline: 'Executive Pastry Chef',
          bio: 'Award-winning pastry chef specializing in French patisserie. Former head chef at Le Cordon Bleu. Expert in chocolate tempering and sugar work.',
        },
        select: { id: true, firstName: true },
      })
      .execute();

    if (!daveResult.ok) {
      throw new Error(`createContact (Dave) failed: ${JSON.stringify(daveResult.errors)}`);
    }
    const daveId = daveResult.data.createContact.contact.id!;
    expect(daveId).toBeDefined();

    // =====================================================================
    // 3. Insert a note via ORM
    // =====================================================================
    const noteResult = await sdk.note
      .create({
        data: {
          entityId: userId!,
          content:
            'Architecture review: we decided to use pgvector with HNSW indexes for approximate nearest neighbor search. The embedding pipeline will use Ollama nomic-embed-text for 768-dimensional vectors.',
        },
        select: { id: true, content: true },
      })
      .execute();

    if (!noteResult.ok) {
      throw new Error(`createNote failed: ${JSON.stringify(noteResult.errors)}`);
    }
    const noteId = noteResult.data.createNote.note.id!;
    expect(noteId).toBeDefined();

    // =====================================================================
    // 4. Create a chunk for Carol via contactsChunk
    // =====================================================================
    const chunkResult = await sdk.contactsChunk
      .create({
        data: {
          contactsId: carolId,
          content:
            'Carol presented at PGConf on advanced indexing strategies for vector similarity search using HNSW and IVFFlat algorithms in pgvector.',
          chunkIndex: 0,
        },
        select: { id: true, content: true, chunkIndex: true },
      })
      .execute();

    if (!chunkResult.ok) {
      throw new Error(`createContactsChunk failed: ${JSON.stringify(chunkResult.errors)}`);
    }
    const chunk = chunkResult.data.createContactsChunk.contactsChunk;
    expect(chunk.content).toContain('Carol');
    expect(chunk.chunkIndex).toBe(0);
    const chunkId = chunk.id!;

    // =====================================================================
    // 5. Embed records via real Ollama and store via ORM
    // =====================================================================

    // Embed Carol
    const carolText =
      'Carol Engineer. Senior Distributed Systems Engineer. Expert in PostgreSQL internals, distributed consensus algorithms, and vector databases.';
    const carolVec = await ollama.generateEmbedding(carolText, EMBEDDING_MODEL);
    expect(carolVec.length).toBe(768);

    const embedCarolResult = await sdk.contact
      .update({
        where: { id: carolId },
        data: {
          embedding: carolVec as any,
          embeddingText: carolText,
        },
        select: { id: true, embeddingText: true },
      })
      .execute();

    if (!embedCarolResult.ok) {
      throw new Error(`embed Carol failed: ${JSON.stringify(embedCarolResult.errors)}`);
    }
    expect(embedCarolResult.data.updateContact.contact.embeddingText).toContain('Carol');

    // Embed Dave
    const daveText =
      'Dave Chef. Executive Pastry Chef. Award-winning pastry chef specializing in French patisserie and chocolate tempering.';
    const daveVec = await ollama.generateEmbedding(daveText, EMBEDDING_MODEL);

    const embedDaveResult = await sdk.contact
      .update({
        where: { id: daveId },
        data: {
          embedding: daveVec as any,
          embeddingText: daveText,
        },
        select: { id: true },
      })
      .execute();

    if (!embedDaveResult.ok) {
      throw new Error(`embed Dave failed: ${JSON.stringify(embedDaveResult.errors)}`);
    }

    // Embed the note
    const noteText =
      'Architecture review: we decided to use pgvector with HNSW indexes for approximate nearest neighbor search. The embedding pipeline will use Ollama nomic-embed-text for 768-dimensional vectors.';
    const noteVec = await ollama.generateEmbedding(noteText, EMBEDDING_MODEL);

    const embedNoteResult = await sdk.note
      .update({
        where: { id: noteId },
        data: {
          embedding: noteVec as any,
          embeddingText: noteText,
        },
        select: { id: true },
      })
      .execute();

    if (!embedNoteResult.ok) {
      throw new Error(`embed note failed: ${JSON.stringify(embedNoteResult.errors)}`);
    }

    // Embed the chunk
    const chunkText =
      'Carol presented at PGConf on advanced indexing strategies for vector similarity search using HNSW and IVFFlat algorithms in pgvector.';
    const chunkVec = await ollama.generateEmbedding(chunkText, EMBEDDING_MODEL);

    const embedChunkResult = await sdk.contactsChunk
      .update({
        where: { id: chunkId },
        data: {
          embedding: chunkVec as any,
        },
        select: { id: true },
      })
      .execute();

    if (!embedChunkResult.ok) {
      throw new Error(`embed chunk failed: ${JSON.stringify(embedChunkResult.errors)}`);
    }

    // =====================================================================
    // 6. Vector similarity search -- semantic ranking
    // =====================================================================

    // DB query should rank Carol closer than Dave
    const dbQueryVec = await ollama.generateEmbedding(
      'PostgreSQL distributed systems vector database engineer',
      EMBEDDING_MODEL,
    );

    const dbSearchResult = await sdk.contact
      .findMany({
        where: {
          vectorEmbedding: {
            vector: dbQueryVec,
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

    if (!dbSearchResult.ok) {
      throw new Error(`DB vector search failed: ${JSON.stringify(dbSearchResult.errors)}`);
    }
    const dbNodes = dbSearchResult.data.contacts.nodes;
    expect(dbNodes.length).toBeGreaterThanOrEqual(2);

    const carolInDb = dbNodes.find((n: any) => n.firstName === 'Carol');
    const daveInDb = dbNodes.find((n: any) => n.firstName === 'Dave');
    expect(carolInDb).toBeDefined();
    expect(daveInDb).toBeDefined();
    expect(carolInDb.embeddingVectorDistance).toBeLessThan(daveInDb.embeddingVectorDistance);

    // Cooking query should rank Dave closer than Carol
    const cookingQueryVec = await ollama.generateEmbedding(
      'French pastry chef chocolate dessert cooking',
      EMBEDDING_MODEL,
    );

    const cookingSearchResult = await sdk.contact
      .findMany({
        where: {
          vectorEmbedding: {
            vector: cookingQueryVec,
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

    if (!cookingSearchResult.ok) {
      throw new Error(`cooking vector search failed: ${JSON.stringify(cookingSearchResult.errors)}`);
    }
    const cookingNodes = cookingSearchResult.data.contacts.nodes;
    expect(cookingNodes.length).toBeGreaterThanOrEqual(2);

    const carolInCooking = cookingNodes.find((n: any) => n.firstName === 'Carol');
    const daveInCooking = cookingNodes.find((n: any) => n.firstName === 'Dave');
    expect(carolInCooking).toBeDefined();
    expect(daveInCooking).toBeDefined();
    expect(daveInCooking.embeddingVectorDistance).toBeLessThan(carolInCooking.embeddingVectorDistance);

    // =====================================================================
    // 7. Vector search on notes
    // =====================================================================
    const noteQueryVec = await ollama.generateEmbedding(
      'pgvector HNSW embedding pipeline architecture',
      EMBEDDING_MODEL,
    );

    const noteSearchResult = await sdk.note
      .findMany({
        where: {
          vectorEmbedding: {
            vector: noteQueryVec,
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

    if (!noteSearchResult.ok) {
      throw new Error(`note vector search failed: ${JSON.stringify(noteSearchResult.errors)}`);
    }
    const noteNodes = noteSearchResult.data.notes.nodes;
    expect(noteNodes.length).toBeGreaterThanOrEqual(1);
    expect(noteNodes[0].content).toContain('pgvector');
    expect(noteNodes[0].embeddingVectorDistance).toBeLessThan(1.0);

    // =====================================================================
    // 8. Vector search on chunks
    // =====================================================================
    const chunkQueryVec = await ollama.generateEmbedding(
      'PGConf indexing strategies HNSW IVFFlat',
      EMBEDDING_MODEL,
    );

    const chunkSearchResult = await sdk.contactsChunk
      .findMany({
        where: {
          vectorEmbedding: {
            vector: chunkQueryVec,
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

    if (!chunkSearchResult.ok) {
      throw new Error(`chunk vector search failed: ${JSON.stringify(chunkSearchResult.errors)}`);
    }
    const chunkNodes = chunkSearchResult.data.contactsChunks.nodes;
    expect(chunkNodes.length).toBeGreaterThanOrEqual(1);
    expect(chunkNodes[0].content).toContain('PGConf');
    expect(chunkNodes[0].embeddingVectorDistance).toBeLessThan(1.0);

    // =====================================================================
    // 9. Cross-table search (contacts + notes)
    // =====================================================================
    const crossQueryVec = await ollama.generateEmbedding(
      'vector database architecture PostgreSQL',
      EMBEDDING_MODEL,
    );

    const contactCrossRes = await sdk.contact
      .findMany({
        where: {
          vectorEmbedding: {
            vector: crossQueryVec,
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

    const noteCrossRes = await sdk.note
      .findMany({
        where: {
          vectorEmbedding: {
            vector: crossQueryVec,
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

    expect(contactCrossRes.ok).toBe(true);
    expect(noteCrossRes.ok).toBe(true);

    const crossContacts = contactCrossRes.data.contacts.nodes;
    const crossNotes = noteCrossRes.data.notes.nodes;

    const all = [
      ...crossContacts.map((c: any) => ({
        source: 'contact',
        label: c.firstName,
        distance: c.embeddingVectorDistance,
      })),
      ...crossNotes.map((n: any) => ({
        source: 'note',
        label: (n.content || '').slice(0, 40),
        distance: n.embeddingVectorDistance,
      })),
    ].sort((a: any, b: any) => a.distance - b.distance);

    expect(all.length).toBeGreaterThanOrEqual(2);

    for (const row of all) {
      expect(typeof row.distance).toBe('number');
      expect(row.distance).toBeGreaterThan(0);
      expect(row.distance).toBeLessThan(2.0);
    }

    const topLabels = all.slice(0, 3).map((r: any) => r.label.toLowerCase());
    const hasRelevant = topLabels.some(
      (l: string) =>
        l.includes('carol') ||
        l.includes('pgvector') ||
        l.includes('architect'),
    );
    expect(hasRelevant).toBe(true);
  });
});
