import { config } from './config';
import { authenticate, createAuthenticatedClient } from './client';
import { embed } from './ollama';

export type TableName = 'contacts' | 'companies' | 'events' | 'venues' | 'notes' | 'tasks' | 'memories' | 'skills' | 'rules';

export interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  /** Unified search relevance score (0..1, higher = more relevant). Powered by the ORM's searchScore which normalizes and blends all active search signals (vector, BM25, tsvector, trgm). */
  score: number;
  data: Record<string, unknown>;
}

type SDKClient = ReturnType<typeof createAuthenticatedClient>;

/**
 * Build a hybrid search condition for ORM findMany queries.
 *
 * Combines vector similarity (cosine distance on embeddings) with
 * fullTextSearch — a composite filter that dispatches the raw query
 * string to tsvector, BM25, and pg_trgm simultaneously.  Rows matching
 * ANY algorithm are returned and searchScore reflects a true blended
 * rank across all active signals.
 */
const HYBRID_CONDITION = (query: string, queryEmbedding: number[]) => ({
  or: [
    { vectorEmbedding: { vector: queryEmbedding, metric: 'COSINE' as const, distance: 2.0 } },
    { fullTextSearch: query },
  ],
});

function toResult(table: TableName, node: Record<string, unknown>, nameFn: (n: Record<string, unknown>) => string): SearchResult {
  return {
    table,
    id: node.id as string,
    name: nameFn(node),
    score: (node.searchScore as number) ?? 0,
    data: node,
  };
}

// ---------------------------------------------------------------------------
// Per-table search functions
//
// Each uses HYBRID_CONDITION which combines vector similarity with
// fullTextSearch (tsvector + BM25 + pg_trgm).  searchScore is a true
// composite relevance score (0..1) that blends all active signals.
// ---------------------------------------------------------------------------

async function searchContacts(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.contact.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, firstName: true, lastName: true, headline: true, bio: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.contacts?.nodes || []).map((n: any) =>
    toResult('contacts', n, (x) => `${x.firstName || ''} ${x.lastName || ''}`.trim()));
}

async function searchCompanies(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.company.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, name: true, description: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.companies?.nodes || []).map((n: any) => toResult('companies', n, (x) => (x.name as string) || 'Untitled'));
}

async function searchEvents(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.event.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, name: true, notesText: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.events?.nodes || []).map((n: any) => toResult('events', n, (x) => (x.name as string) || 'Untitled'));
}

async function searchVenues(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.venue.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, name: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.venues?.nodes || []).map((n: any) => toResult('venues', n, (x) => (x.name as string) || 'Untitled'));
}

async function searchNotes(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.note.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, content: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.notes?.nodes || []).map((n: any) => toResult('notes', n, (x) => ((x.content as string) || '').slice(0, 80) || 'Untitled'));
}

async function searchTasks(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.task.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, title: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.tasks?.nodes || []).map((n: any) => toResult('tasks', n, (x) => (x.title as string) || 'Untitled'));
}

async function searchMemories(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.memory.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, content: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.memories?.nodes || []).map((n: any) => toResult('memories', n, (x) => ((x.content as string) || '').slice(0, 80) || 'Untitled'));
}

async function searchSkills(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.skill.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, name: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.skills?.nodes || []).map((n: any) => toResult('skills', n, (x) => (x.name as string) || 'Untitled'));
}

async function searchRules(client: SDKClient, query: string, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.rule.findMany({
    where: HYBRID_CONDITION(query, qe), first: limit,
    select: { id: true, name: true, searchScore: true },
  }).execute();
  return ((res.data as Record<string, any>)?.rules?.nodes || []).map((n: any) => toResult('rules', n, (x) => (x.name as string) || 'Untitled'));
}

// ---------------------------------------------------------------------------
// Exports
// ---------------------------------------------------------------------------

export const TABLE_SEARCH: Record<TableName, (client: SDKClient, query: string, qe: number[], limit: number) => Promise<SearchResult[]>> = {
  contacts: searchContacts, companies: searchCompanies, events: searchEvents,
  venues: searchVenues, notes: searchNotes,
  tasks: searchTasks, memories: searchMemories, skills: searchSkills, rules: searchRules,
};

export async function search(query: string, tables?: TableName[]) {
  const ts = config.databaseName.split('-').pop();
  const ADMIN_EMAIL = `admin+${ts}@agentic-db.local`;
  const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'AgentOS2026!';

  const { token } = await authenticate(ADMIN_EMAIL, ADMIN_PASSWORD);
  const client = createAuthenticatedClient(token);
  const queryEmbedding = await embed(query);

  const targetTables = tables || (Object.keys(TABLE_SEARCH) as TableName[]);
  const results: SearchResult[] = [];

  for (const table of targetTables) {
    const searchFn = TABLE_SEARCH[table];
    if (searchFn) {
      try {
        const tableResults = await searchFn(client, query, queryEmbedding, 3);
        results.push(...tableResults);
      } catch {
        // Model may not be available in the SDK yet; skip gracefully
      }
    }
  }

  return results.sort((a, b) => b.score - a.score);
}

async function main() {
  const query = process.argv[2];
  if (!query) return;

  console.log(`\n\ud83d\udd0d Searching: "${query}"\n`);
  const results = await search(query);
  console.log('\n\ud83d\udcca Results:\n');

  for (const result of results.slice(0, 15)) {
    const pct = (result.score * 100).toFixed(1);
    const bar = '\u2588'.repeat(Math.round(result.score * 20)) + '\u2591'.repeat(20 - Math.round(result.score * 20));
    console.log(`   [${result.table}] ${result.name}`);
    console.log(`      Score: ${bar} ${pct}%`);
    if (result.table === 'contacts') console.log(`      ${(result.data as Record<string, any>).headline || ''}`);
    if (result.table === 'companies') console.log(`      ${((result.data as Record<string, any>).description || '').slice(0, 100)}...`);
    console.log('');
  }
}

if (require.main === module) {
  main().catch((err) => {
    console.error('\u274c', err.message ?? err);
    process.exit(1);
  });
}
