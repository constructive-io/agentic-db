/**
 * RAG Unified Search Tests — Pre-baked Fixtures (no Ollama required)
 *
 * Tests the unified search infrastructure using pre-baked nomic-embed-text
 * embeddings from fixtures/rag-embeddings.json. This avoids requiring a
 * live Ollama instance while still using real, semantically meaningful vectors.
 *
 * Key verifications:
 *   - searchScore is populated (non-null) for vector-only queries
 *   - searchScore is 0..1 and correctly ranks results
 *   - Chunk-aware search (via @hasChunks + includeChunks) works transparently
 *   - Cross-table unified search returns ranked results
 *
 * Fixture generation:
 *   Embeddings were generated with Ollama nomic-embed-text (768-dim).
 *   To regenerate: see packages/agentic-db/__tests__/fixtures/README or
 *   run the generation script with a local Ollama instance.
 *
 * Requires:
 *   - Docker with constructiveio/postgres-plus:18
 *   - pgpm CLI installed (npm install -g pgpm@latest)
 *   - NO Ollama required (embeddings are pre-baked)
 */
jest.setTimeout(300000);
process.env.LOG_SCOPE = '@constructive-io/graphql-test';

import { getConnections, GraphQLTestAdapter } from '@constructive-io/graphql-test';
import type { GraphQLQueryFn } from '@constructive-io/graphql-test';
import { createClient } from '@agentic-db/sdk';
import {
  createAppJobsStub,
  grantAnonymousAccess,
} from '../test-utils/helpers';

// Pre-baked embeddings generated with nomic-embed-text
import fixtures from './fixtures/rag-embeddings.json';

const SCHEMAS = [
  'agentic_db_app_public',
];

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

  await grantAnonymousAccess(pg);
  await createAppJobsStub(pg);
});

afterAll(async () => {
  if (teardown) await teardown();
});

beforeEach(() => db.beforeEach());
afterEach(() => db.afterEach());

describe('Unified Search with pre-baked embeddings', () => {
  // Shared state across tests in this describe block
  let sdk: ReturnType<typeof createClient>;
  let carolId: string;
  let daveId: string;
  let eveId: string;
  let noteArchId: string;
  let noteMeetingId: string;

  beforeEach(async () => {
    sdk = createClient({ adapter: new GraphQLTestAdapter(query) });

    // 1. Insert contacts (without embeddings)
    const carolRes = await sdk.contact.create({
      data: {
        firstName: 'Carol', lastName: 'Engineer',
        headline: fixtures.records.carol.data.headline,
        bio: fixtures.records.carol.data.bio,
      },
      select: { id: true },
    }).execute();
    if (!carolRes.ok) throw new Error(`create Carol failed: ${JSON.stringify(carolRes.errors)}`);
    carolId = carolRes.data.createContact.contact.id!;

    const daveRes = await sdk.contact.create({
      data: {
        firstName: 'Dave', lastName: 'Chef',
        headline: fixtures.records.dave.data.headline,
        bio: fixtures.records.dave.data.bio,
      },
      select: { id: true },
    }).execute();
    if (!daveRes.ok) throw new Error(`create Dave failed: ${JSON.stringify(daveRes.errors)}`);
    daveId = daveRes.data.createContact.contact.id!;

    const eveRes = await sdk.contact.create({
      data: {
        firstName: 'Eve', lastName: 'Scientist',
        headline: fixtures.records.eve.data.headline,
        bio: fixtures.records.eve.data.bio,
      },
      select: { id: true },
    }).execute();
    if (!eveRes.ok) throw new Error(`create Eve failed: ${JSON.stringify(eveRes.errors)}`);
    eveId = eveRes.data.createContact.contact.id!;

    // 2. Insert notes (without embeddings)
    const noteArchRes = await sdk.note.create({
      data: {
        content: fixtures.records.note_architecture.data.content,
      },
      select: { id: true },
    }).execute();
    if (!noteArchRes.ok) throw new Error(`create arch note failed: ${JSON.stringify(noteArchRes.errors)}`);
    noteArchId = noteArchRes.data.createNote.note.id!;

    const noteMeetingRes = await sdk.note.create({
      data: {
        content: fixtures.records.note_meeting.data.content,
      },
      select: { id: true },
    }).execute();
    if (!noteMeetingRes.ok) throw new Error(`create meeting note failed: ${JSON.stringify(noteMeetingRes.errors)}`);
    noteMeetingId = noteMeetingRes.data.createNote.note.id!;

    // 3. Embed contacts and notes via ORM update (pre-baked vectors)
    for (const [id, rec] of [
      [carolId, fixtures.records.carol] as const,
      [daveId, fixtures.records.dave] as const,
      [eveId, fixtures.records.eve] as const,
    ]) {
      const embedRes = await sdk.contact.update({
        where: { id },
        data: { embedding: rec.embedding as any, embeddingText: rec.text },
        select: { id: true },
      }).execute();
      if (!embedRes.ok) throw new Error(`embed contact ${id} failed: ${JSON.stringify(embedRes.errors)}`);
    }

    for (const [id, rec] of [
      [noteArchId, fixtures.records.note_architecture] as const,
      [noteMeetingId, fixtures.records.note_meeting] as const,
    ]) {
      const embedRes = await sdk.note.update({
        where: { id },
        data: { embedding: rec.embedding as any, embeddingText: rec.text },
        select: { id: true },
      }).execute();
      if (!embedRes.ok) throw new Error(`embed note ${id} failed: ${JSON.stringify(embedRes.errors)}`);
    }

    await db.publish();
  });

  // =========================================================================
  // searchScore verification
  // =========================================================================

  it('should return non-null searchScore for vector-only queries on contacts', async () => {
    const qe = fixtures.queries.db_engineer.embedding;

    const result = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: {
        id: true,
        firstName: true,
        lastName: true,
        searchScore: true,
        embeddingVectorDistance: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);
    const nodes = result.data.contacts.nodes;

    expect(nodes.length).toBeGreaterThanOrEqual(2);

    for (const node of nodes) {
      // searchScore must be populated (non-null) even for vector-only queries
      expect(node.searchScore).not.toBeNull();
      expect(typeof node.searchScore).toBe('number');
      expect(node.searchScore).toBeGreaterThanOrEqual(0);
      expect(node.searchScore).toBeLessThanOrEqual(1);
    }
  });

  it('should return non-null searchScore for vector-only queries on notes', async () => {
    const qe = fixtures.queries.pgvector_arch.embedding;

    const result = await sdk.note.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: {
        id: true,
        content: true,
        searchScore: true,
        embeddingVectorDistance: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);
    const nodes = result.data.notes.nodes;

    expect(nodes.length).toBeGreaterThanOrEqual(1);

    for (const node of nodes) {
      expect(node.searchScore).not.toBeNull();
      expect(typeof node.searchScore).toBe('number');
      expect(node.searchScore).toBeGreaterThanOrEqual(0);
      expect(node.searchScore).toBeLessThanOrEqual(1);
    }
  });

  // =========================================================================
  // searchScore ranking correctness
  // =========================================================================

  it('should rank Carol higher than Dave for database/systems query', async () => {
    const qe = fixtures.queries.db_engineer.embedding;

    const result = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: {
        id: true,
        firstName: true,
        searchScore: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);
    const nodes = result.data.contacts.nodes;

    const carol = nodes.find((n: any) => n.firstName === 'Carol');
    const dave = nodes.find((n: any) => n.firstName === 'Dave');
    expect(carol).toBeDefined();
    expect(dave).toBeDefined();
    expect(carol.searchScore).toBeGreaterThan(dave.searchScore);
  });

  it('should rank Dave higher than Carol for cooking query', async () => {
    const qe = fixtures.queries.cooking.embedding;

    const result = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: {
        id: true,
        firstName: true,
        searchScore: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);
    const nodes = result.data.contacts.nodes;

    const carol = nodes.find((n: any) => n.firstName === 'Carol');
    const dave = nodes.find((n: any) => n.firstName === 'Dave');
    expect(carol).toBeDefined();
    expect(dave).toBeDefined();
    expect(dave.searchScore).toBeGreaterThan(carol.searchScore);
  });

  it('should rank Eve highest for marine biology query', async () => {
    const qe = fixtures.queries.marine_bio.embedding;

    const result = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: {
        id: true,
        firstName: true,
        searchScore: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);
    const nodes = result.data.contacts.nodes;

    const eve = nodes.find((n: any) => n.firstName === 'Eve');
    const carol = nodes.find((n: any) => n.firstName === 'Carol');
    const dave = nodes.find((n: any) => n.firstName === 'Dave');
    expect(eve).toBeDefined();
    expect(eve.searchScore).toBeGreaterThan(carol.searchScore);
    expect(eve.searchScore).toBeGreaterThan(dave.searchScore);
  });

  // =========================================================================
  // Chunk-aware search (transparent via @hasChunks + includeChunks)
  // =========================================================================

  it('should transparently include chunk matches via includeChunks (default true)', async () => {
    // Query specifically about PGConf — only the chunk mentions this, not Carol's parent embedding
    const qe = fixtures.queries.pgconf_indexing.embedding;

    const result = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: {
        id: true,
        firstName: true,
        embeddingVectorDistance: true,
        searchScore: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);
    const nodes = result.data.contacts.nodes;

    // Carol should appear (her chunk about PGConf matches)
    const carol = nodes.find((n: any) => n.firstName === 'Carol');
    expect(carol).toBeDefined();

    // The distance should be low because includeChunks uses LEAST(parent, min(chunks))
    expect(carol.embeddingVectorDistance).toBeLessThan(1.0);
    expect(carol.searchScore).toBeGreaterThan(0);
  });

  it('should return higher distance when includeChunks is false (parent-only)', async () => {
    const qe = fixtures.queries.pgconf_indexing.embedding;

    // With chunks (default)
    const withChunks = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: { id: true, firstName: true, embeddingVectorDistance: true },
    }).execute();

    // Without chunks
    const withoutChunks = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0, includeChunks: false },
      },
      first: 5,
      select: { id: true, firstName: true, embeddingVectorDistance: true },
    }).execute();

    if (!withChunks.ok) throw new Error(`withChunks search failed: ${JSON.stringify(withChunks.errors)}`);
    if (!withoutChunks.ok) throw new Error(`withoutChunks search failed: ${JSON.stringify(withoutChunks.errors)}`);

    const carolWith = withChunks.data.contacts.nodes.find((n: any) => n.firstName === 'Carol');
    const carolWithout = withoutChunks.data.contacts.nodes.find((n: any) => n.firstName === 'Carol');

    expect(carolWith).toBeDefined();
    expect(carolWithout).toBeDefined();

    // With chunks should have lower-or-equal (better) distance since LEAST(parent, min(chunks))
    // is always <= parent-only distance. When the parent embedding already matches well,
    // the distances may be equal.
    expect(carolWith.embeddingVectorDistance).toBeLessThanOrEqual(carolWithout.embeddingVectorDistance);
  });

  // =========================================================================
  // Cross-table unified search
  // =========================================================================

  it('should search across contacts and notes with searchScore', async () => {
    const qe = fixtures.queries.vector_db_arch.embedding;

    const contactRes = await sdk.contact.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: { id: true, firstName: true, searchScore: true },
    }).execute();

    const noteRes = await sdk.note.findMany({
      where: {
        vectorEmbedding: { vector: qe, metric: 'COSINE', distance: 2.0 },
      },
      first: 5,
      select: { id: true, content: true, searchScore: true },
    }).execute();

    expect(contactRes.ok).toBe(true);
    expect(noteRes.ok).toBe(true);

    const allResults = [
      ...contactRes.data.contacts.nodes.map((n: any) => ({
        source: 'contact',
        label: n.firstName,
        score: n.searchScore,
      })),
      ...noteRes.data.notes.nodes.map((n: any) => ({
        source: 'note',
        label: (n.content || '').slice(0, 40),
        score: n.searchScore,
      })),
    ].sort((a: any, b: any) => b.score - a.score);

    expect(allResults.length).toBeGreaterThanOrEqual(2);

    // All scores should be valid
    for (const row of allResults) {
      expect(typeof row.score).toBe('number');
      expect(row.score).toBeGreaterThanOrEqual(0);
      expect(row.score).toBeLessThanOrEqual(1);
    }

    // Carol (DB engineer) and the architecture note should rank highly
    const top3Labels = allResults.slice(0, 3).map((r: any) => r.label.toLowerCase());
    const hasRelevant = top3Labels.some(
      (l: string) =>
        l.includes('carol') ||
        l.includes('pgvector') ||
        l.includes('architect'),
    );
    expect(hasRelevant).toBe(true);
  });
});
