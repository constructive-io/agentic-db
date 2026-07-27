/**
 * CLI Search Integration Tests — Pre-baked Data + Live Ollama Queries
 *
 * Tests the exact search patterns used by the CLI commands:
 *   - packages/rag/src/search.ts  (pnpm search)
 *   - sdk/cli/src/commands/search.ts  (agentic-db search)
 *   - sdk/cli/src/commands/ask.ts  (agentic-db ask --context)
 *
 * Data seeding uses pre-baked nomic-embed-text embeddings from fixtures
 * (no Ollama required for setup).  Query embedding uses LIVE Ollama so
 * the test exercises the real query-time pipeline.
 *
 * Key verifications:
 *   - searchScore is populated (non-null) when using the CLI search patterns
 *   - Live Ollama query embeddings produce correct semantic ranking
 *   - Multi-table search aggregation works (contacts + notes sorted by score)
 *   - Ask-command context formatting renders correctly
 *
 * Requires:
 *   - Docker with constructiveio/postgres-plus:18
 *   - pgpm CLI installed (npm install -g pgpm@latest)
 *   - Ollama running with nomic-embed-text model pulled
 *
 * Environment:
 *   - OLLAMA_URL (default: http://localhost:11434)
 *   - Standard PG env vars (PGHOST, PGPORT, PGUSER, PGPASSWORD)
 */
jest.setTimeout(300000);
process.env.LOG_SCOPE = '@constructive-io/graphql-test';

import { getConnections, GraphQLTestAdapter } from '@constructive-io/graphql-test';
import { ConstructivePreset } from 'graphile-settings';
import type { GraphQLQueryFn } from '@constructive-io/graphql-test';
import { createClient } from '@agentic-db/sdk';
import OllamaClient from '@agentic-kit/ollama';
import {
  createAppJobsStub,
  grantAnonymousAccess,
} from '../test-utils/helpers';

// Pre-baked embeddings generated with nomic-embed-text
import fixtures from './fixtures/rag-embeddings.json';

const SCHEMAS = [
  'agentic_db_app_public',
];

const OLLAMA_URL = process.env.OLLAMA_URL || 'http://localhost:11434';
const EMBEDDING_MODEL = process.env.EMBEDDING_MODEL || 'nomic-embed-text';

let db: any;
let pg: any;
let query: GraphQLQueryFn;
let teardown: () => Promise<void>;

const ollama = new OllamaClient(OLLAMA_URL);

async function embedQuery(text: string): Promise<number[]> {
  return ollama.generateEmbedding(text, EMBEDDING_MODEL);
}

beforeAll(async () => {
  const connections = await getConnections({
    schemas: SCHEMAS,
    authRole: 'anonymous',
    preset: {
      extends: [ConstructivePreset],
      // agentic-db tables have a physical embedding_text column;
      // LlmTextMutationPlugin's synthesized embeddingText companion
      // field would collide with it.
      disablePlugins: ['LlmTextMutationPlugin'],
    },
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

// ---------------------------------------------------------------------------
// Helpers — replicate the exact patterns from CLI search.ts / ask.ts
// ---------------------------------------------------------------------------

/**
 * Vector condition builder — mirrors VECTOR_CONDITION in both
 * packages/rag/src/search.ts and sdk/cli/src/commands/search.ts
 */
const VECTOR_CONDITION = (queryEmbedding: number[]) => ({
  vectorEmbedding: {
    vector: queryEmbedding,
    metric: 'COSINE' as const,
    distance: 2.0,
  },
});

interface SearchResult {
  table: string;
  id: string;
  name: string;
  score: number;
  data: Record<string, unknown>;
}

function toResult(
  table: string,
  node: Record<string, unknown>,
  nameFn: (n: Record<string, unknown>) => string,
): SearchResult {
  return {
    table,
    id: node.id as string,
    name: nameFn(node),
    score: (node.searchScore as number) ?? 0,
    data: node,
  };
}

/**
 * Format context for the ask command — mirrors the formatting logic
 * in sdk/cli/src/commands/ask.ts and packages/rag/src/ask.ts
 */
function formatContext(items: SearchResult[]): string {
  return items
    .map((item, i) => {
      let content = '';
      const d = item.data;
      switch (item.table) {
        case 'contacts':
          content = `Contact: ${d.firstName || ''} ${d.lastName || ''}\nHeadline: ${d.headline || 'None'}\nBio: ${d.bio || 'None'}`;
          break;
        case 'notes':
          content = `Note: ${d.content || 'None'}`;
          break;
        case 'events':
          content = `Event: ${d.name}\nNotes: ${d.notesText || ''}`;
          break;
        case 'agentTasks':
          content = `Task: ${d.title || ''}`;
          break;
        case 'conversations':
          content = `Conversation: ${d.title || ''}`;
          break;
        default:
          content = `${item.table}: ${item.name}\nData: ${JSON.stringify(d)}`;
      }
      return `[Source ${i + 1}] (${item.table})\n${content}`;
    })
    .join('\n\n');
}

// ---------------------------------------------------------------------------
// Tests
// ---------------------------------------------------------------------------

describe('CLI Search Integration (pre-baked data + live Ollama)', () => {
  let sdk: ReturnType<typeof createClient>;
  let carolId: string;
  let daveId: string;
  let eveId: string;
  let noteArchId: string;
  let noteMeetingId: string;

  beforeEach(async () => {
    sdk = createClient({ adapter: new GraphQLTestAdapter(query) });

    // 1. Insert contacts
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

    // 2. Insert notes
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
  // Ollama connectivity
  // =========================================================================

  it('should connect to Ollama and produce a 768-dim embedding', async () => {
    const vec = await embedQuery('hello world');
    expect(Array.isArray(vec)).toBe(true);
    expect(vec.length).toBe(768);
    expect(typeof vec[0]).toBe('number');
  });

  // =========================================================================
  // searchScore with live Ollama query embedding (CLI search pattern)
  // =========================================================================

  it('should return non-null searchScore for contacts using live Ollama query', async () => {
    const qe = await embedQuery('PostgreSQL distributed systems engineer');

    const result = await sdk.contact.findMany({
      where: VECTOR_CONDITION(qe),
      first: 5,
      select: {
        id: true,
        firstName: true,
        lastName: true,
        headline: true,
        bio: true,
        searchScore: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);
    const nodes = result.data.contacts.nodes;

    expect(nodes.length).toBeGreaterThanOrEqual(2);

    for (const node of nodes) {
      expect(node.searchScore).not.toBeNull();
      expect(typeof node.searchScore).toBe('number');
      expect(node.searchScore).toBeGreaterThanOrEqual(0);
      expect(node.searchScore).toBeLessThanOrEqual(1);
    }

    // Convert to SearchResult using the CLI's toResult pattern
    const results = nodes.map((n: any) =>
      toResult('contacts', n, (x) => `${x.firstName || ''} ${x.lastName || ''}`.trim()),
    );

    expect(results[0].score).toBeGreaterThan(0);
    expect(results[0].name).toBeDefined();
  });

  it('should return non-null searchScore for notes using live Ollama query', async () => {
    const qe = await embedQuery('pgvector HNSW embedding pipeline architecture');

    const result = await sdk.note.findMany({
      where: VECTOR_CONDITION(qe),
      first: 5,
      select: {
        id: true,
        content: true,
        searchScore: true,
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

    // Convert using CLI pattern for notes
    const results = nodes.map((n: any) =>
      toResult('notes', n, (x) => ((x.content as string) || '').slice(0, 80) || 'Untitled'),
    );

    expect(results[0].score).toBeGreaterThan(0);
    expect(results[0].name).toContain('pgvector');
  });

  // =========================================================================
  // Semantic ranking with live Ollama (CLI search correctness)
  // =========================================================================

  it('should rank Carol higher than Dave for database query (live Ollama)', async () => {
    const qe = await embedQuery('PostgreSQL distributed systems vector database engineer');

    const result = await sdk.contact.findMany({
      where: VECTOR_CONDITION(qe),
      first: 5,
      select: { id: true, firstName: true, searchScore: true },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);

    const results = result.data.contacts.nodes.map((n: any) =>
      toResult('contacts', n, (x) => `${x.firstName || ''}`),
    );

    const carol = results.find((r: SearchResult) => r.name === 'Carol');
    const dave = results.find((r: SearchResult) => r.name === 'Dave');
    expect(carol).toBeDefined();
    expect(dave).toBeDefined();
    expect(carol!.score).toBeGreaterThan(dave!.score);
  });

  it('should rank Dave higher than Carol for cooking query (live Ollama)', async () => {
    const qe = await embedQuery('French pastry chef chocolate dessert cooking');

    const result = await sdk.contact.findMany({
      where: VECTOR_CONDITION(qe),
      first: 5,
      select: { id: true, firstName: true, searchScore: true },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);

    const results = result.data.contacts.nodes.map((n: any) =>
      toResult('contacts', n, (x) => `${x.firstName || ''}`),
    );

    const carol = results.find((r: SearchResult) => r.name === 'Carol');
    const dave = results.find((r: SearchResult) => r.name === 'Dave');
    expect(carol).toBeDefined();
    expect(dave).toBeDefined();
    expect(dave!.score).toBeGreaterThan(carol!.score);
  });

  it('should rank Eve highest for marine biology query (live Ollama)', async () => {
    const qe = await embedQuery('marine biology coral reef ocean research');

    const result = await sdk.contact.findMany({
      where: VECTOR_CONDITION(qe),
      first: 5,
      select: { id: true, firstName: true, searchScore: true },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);

    const results = result.data.contacts.nodes.map((n: any) =>
      toResult('contacts', n, (x) => `${x.firstName || ''}`),
    );

    const eve = results.find((r: SearchResult) => r.name === 'Eve');
    const carol = results.find((r: SearchResult) => r.name === 'Carol');
    const dave = results.find((r: SearchResult) => r.name === 'Dave');
    expect(eve).toBeDefined();
    expect(eve!.score).toBeGreaterThan(carol!.score);
    expect(eve!.score).toBeGreaterThan(dave!.score);
  });

  // =========================================================================
  // Multi-table search aggregation (CLI search() pattern)
  // =========================================================================

  it('should aggregate search across contacts and notes sorted by searchScore', async () => {
    const qe = await embedQuery('vector database architecture PostgreSQL');

    // Search contacts — same pattern as CLI search.ts
    const contactRes = await sdk.contact.findMany({
      where: VECTOR_CONDITION(qe),
      first: 3,
      select: {
        id: true,
        firstName: true,
        lastName: true,
        headline: true,
        bio: true,
        searchScore: true,
      },
    }).execute();

    // Search notes — same pattern as CLI search.ts
    const noteRes = await sdk.note.findMany({
      where: VECTOR_CONDITION(qe),
      first: 3,
      select: {
        id: true,
        content: true,
        searchScore: true,
      },
    }).execute();

    expect(contactRes.ok).toBe(true);
    expect(noteRes.ok).toBe(true);

    // Aggregate results using CLI toResult pattern
    const contactResults = contactRes.data.contacts.nodes.map((n: any) =>
      toResult('contacts', n, (x) => `${x.firstName || ''} ${x.lastName || ''}`.trim()),
    );
    const noteResults = noteRes.data.notes.nodes.map((n: any) =>
      toResult('notes', n, (x) => ((x.content as string) || '').slice(0, 80) || 'Untitled'),
    );

    // Combine and sort by score (descending) — same as search() return
    const allResults = [...contactResults, ...noteResults].sort(
      (a, b) => b.score - a.score,
    );

    expect(allResults.length).toBeGreaterThanOrEqual(2);

    // All scores should be valid 0..1
    for (const r of allResults) {
      expect(r.score).toBeGreaterThanOrEqual(0);
      expect(r.score).toBeLessThanOrEqual(1);
    }

    // Carol (DB engineer) and/or the architecture note should be in top 3
    const top3Names = allResults.slice(0, 3).map((r) => r.name.toLowerCase());
    const hasRelevant = top3Names.some(
      (name) =>
        name.includes('carol') ||
        name.includes('pgvector') ||
        name.includes('architect'),
    );
    expect(hasRelevant).toBe(true);
  });

  // =========================================================================
  // Chunk-aware search with live Ollama (CLI includes chunks transparently)
  // =========================================================================

  it('should find Carol via chunk match with live Ollama query', async () => {
    const qe = await embedQuery('PGConf advanced indexing strategies HNSW IVFFlat pgvector');

    const result = await sdk.contact.findMany({
      where: VECTOR_CONDITION(qe),
      first: 5,
      select: {
        id: true,
        firstName: true,
        searchScore: true,
      },
    }).execute();

    if (!result.ok) throw new Error(`search failed: ${JSON.stringify(result.errors)}`);

    const results = result.data.contacts.nodes.map((n: any) =>
      toResult('contacts', n, (x) => `${x.firstName || ''}`),
    );

    // Carol should appear because her chunk about PGConf matches
    const carol = results.find((r: SearchResult) => r.name === 'Carol');
    expect(carol).toBeDefined();
    expect(carol!.score).toBeGreaterThan(0);
  });

  // =========================================================================
  // Ask-command context formatting
  // =========================================================================

  it('should format ask-command context correctly from search results', async () => {
    const qe = await embedQuery('Who knows about databases and PostgreSQL?');

    // Search contacts using CLI pattern
    const contactRes = await sdk.contact.findMany({
      where: VECTOR_CONDITION(qe),
      first: 3,
      select: {
        id: true,
        firstName: true,
        lastName: true,
        headline: true,
        bio: true,
        searchScore: true,
      },
    }).execute();

    // Search notes using CLI pattern
    const noteRes = await sdk.note.findMany({
      where: VECTOR_CONDITION(qe),
      first: 3,
      select: {
        id: true,
        content: true,
        searchScore: true,
      },
    }).execute();

    expect(contactRes.ok).toBe(true);
    expect(noteRes.ok).toBe(true);

    const contactResults = contactRes.data.contacts.nodes.map((n: any) =>
      toResult('contacts', n, (x) => `${x.firstName || ''} ${x.lastName || ''}`.trim()),
    );
    const noteResults = noteRes.data.notes.nodes.map((n: any) =>
      toResult('notes', n, (x) => ((x.content as string) || '').slice(0, 80) || 'Untitled'),
    );

    const allResults = [...contactResults, ...noteResults].sort(
      (a, b) => b.score - a.score,
    );
    const topContext = allResults.slice(0, 5);

    // Format context using the ask command's formatting logic
    const contextText = formatContext(topContext);

    // Context should be non-empty
    expect(contextText.length).toBeGreaterThan(0);

    // Context should contain source markers
    expect(contextText).toContain('[Source 1]');

    // Context should contain the table type
    expect(contextText).toMatch(/\(contacts\)|\(notes\)/);

    // Contact entries should have headline and bio
    if (contextText.includes('(contacts)')) {
      expect(contextText).toMatch(/Contact:/);
      expect(contextText).toMatch(/Headline:/);
      expect(contextText).toMatch(/Bio:/);
    }

    // Note entries should have content
    if (contextText.includes('(notes)')) {
      expect(contextText).toMatch(/Note:/);
    }

    // Sources summary (what the CLI prints after context)
    const sourceSummary = topContext
      .map((item) => `[${item.table}] ${item.name} (${(item.score * 100).toFixed(1)}%)`)
      .join('\n');

    expect(sourceSummary.length).toBeGreaterThan(0);
    // Scores should render as percentages
    expect(sourceSummary).toMatch(/\d+\.\d+%/);
  });
});
