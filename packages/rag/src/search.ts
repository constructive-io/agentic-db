import { config } from './config';
import { authenticate, createAuthenticatedClient } from './client';
import { embed } from './ollama';

export type TableName = 'contacts' | 'companies' | 'events' | 'venues' | 'notes' | 'expenses' | 'tasks' | 'memories' | 'skills' | 'rules';

interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  score: number;
  data: Record<string, unknown>;
  /** If the match came from a chunk table, includes the chunk content */
  chunkContent?: string;
  /** If the match came from a chunk table, includes the chunk index */
  chunkIndex?: number;
}

type SDKClient = ReturnType<typeof createAuthenticatedClient>;

const VECTOR_CONDITION = (queryEmbedding: number[]) => ({
  vectorEmbedding: { vector: queryEmbedding, metric: 'COSINE' as const, distance: 2.0 },
});

function toResult(table: TableName, node: Record<string, unknown>, nameFn: (n: Record<string, unknown>) => string): SearchResult {
  return {
    table,
    id: node.id as string,
    name: nameFn(node),
    score: Math.max(0, 1 - (((node.embeddingVectorDistance as number) ?? 2.0) / 2.0)),
    data: node,
  };
}

// ---------------------------------------------------------------------------
// Parent table searches (existing)
// ---------------------------------------------------------------------------

async function searchContacts(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.contact.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, firstName: true, lastName: true, headline: true, bio: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.contacts?.nodes || []).map((n: any) =>
    toResult('contacts', n, (x) => `${x.firstName || ''} ${x.lastName || ''}`.trim()));
}

async function searchCompanies(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.company.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, description: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.companies?.nodes || []).map((n: any) => toResult('companies', n, (x) => x.name || 'Untitled'));
}

async function searchEvents(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.event.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, notes: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.events?.nodes || []).map((n: any) => toResult('events', n, (x) => x.name || 'Untitled'));
}

async function searchVenues(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.venue.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.venues?.nodes || []).map((n: any) => toResult('venues', n, (x) => x.name || 'Untitled'));
}

async function searchNotes(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.note.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, content: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.notes?.nodes || []).map((n: any) => toResult('notes', n, (x) => (x.content || '').slice(0, 80) || 'Untitled'));
}

async function searchExpenses(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.expense.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, description: true, amount: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.expenses?.nodes || []).map((n: any) => toResult('expenses', n, (x) => `${x.description} ($${x.amount})`));
}

async function searchTasks(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.task.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, title: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.tasks?.nodes || []).map((n: any) => toResult('tasks', n, (x) => x.title || 'Untitled'));
}

async function searchMemories(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.memory.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, content: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.memories?.nodes || []).map((n: any) => toResult('memories', n, (x) => (x.content || '').slice(0, 80) || 'Untitled'));
}

async function searchSkills(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.skill.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.skills?.nodes || []).map((n: any) => toResult('skills', n, (x) => x.name || 'Untitled'));
}

async function searchRules(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.rule.findMany({
    where: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, title: true, embeddingVectorDistance: true },
  }).execute();
  return ((res.data as Record<string, any>)?.rules?.nodes || []).map((n: any) => toResult('rules', n, (x) => x.title || 'Untitled'));
}

// ---------------------------------------------------------------------------
// Chunk table searches (new — searches per-table chunk tables)
// ---------------------------------------------------------------------------

/**
 * Maps parent table name to its chunk table SDK accessor name and the FK
 * field that points back to the parent. The SDK accessor name follows
 * camelCase convention derived from the chunk table name.
 *
 * NOTE: The SDK client methods for chunk tables will only be available
 * after the chunk tables have been provisioned and the SDK regenerated.
 * Until then, these searches will gracefully return empty arrays.
 */
const CHUNK_TABLE_CONFIG: Record<TableName, { accessor: string; parentFkField: string } | null> = {
  contacts: { accessor: 'contactChunk', parentFkField: 'contactId' },
  companies: { accessor: 'companyChunk', parentFkField: 'companyId' },
  events: { accessor: 'eventChunk', parentFkField: 'eventId' },
  venues: { accessor: 'venueChunk', parentFkField: 'venueId' },
  notes: { accessor: 'noteChunk', parentFkField: 'noteId' },
  expenses: null, // expenses don't have chunk tables
  tasks: { accessor: 'taskChunk', parentFkField: 'taskId' },
  memories: { accessor: 'memoryChunk', parentFkField: 'memoryId' },
  skills: { accessor: 'skillChunk', parentFkField: 'skillId' },
  rules: { accessor: 'ruleChunk', parentFkField: 'ruleId' },
};

async function searchChunkTable(
  client: SDKClient,
  table: TableName,
  qe: number[],
  limit: number,
): Promise<SearchResult[]> {
  const chunkConfig = CHUNK_TABLE_CONFIG[table];
  if (!chunkConfig) return [];

  try {
    // Access the chunk table via the SDK client dynamically
    const chunkClient = (client as Record<string, any>)[chunkConfig.accessor];
    if (!chunkClient?.findMany) return [];

    const res = await chunkClient.findMany({
      where: VECTOR_CONDITION(qe),
      first: limit,
      select: {
        id: true,
        [chunkConfig.parentFkField]: true,
        chunkIndex: true,
        content: true,
        embeddingVectorDistance: true,
      },
    }).execute();

    const pluralName = `${chunkConfig.accessor.replace(/([A-Z])/g, '_$1').toLowerCase()}s`;
    const nodes: Record<string, unknown>[] = (res.data as Record<string, any>)?.[pluralName]?.nodes || [];

    return nodes.map((n) => ({
      table,
      id: n[chunkConfig.parentFkField] as string, // parent record ID
      name: `[chunk ${n.chunkIndex}] ${((n.content as string) || '').slice(0, 80)}`,
      score: Math.max(0, 1 - (((n.embeddingVectorDistance as number) ?? 2.0) / 2.0)),
      data: n,
      chunkContent: n.content as string,
      chunkIndex: n.chunkIndex as number,
    }));
  } catch {
    // Chunk tables may not exist yet; fail gracefully
    return [];
  }
}

// ---------------------------------------------------------------------------
// Exports
// ---------------------------------------------------------------------------

export const TABLE_SEARCH: Record<TableName, (client: SDKClient, qe: number[], limit: number) => Promise<SearchResult[]>> = {
  contacts: searchContacts, companies: searchCompanies, events: searchEvents,
  venues: searchVenues, notes: searchNotes, expenses: searchExpenses,
  tasks: searchTasks, memories: searchMemories, skills: searchSkills, rules: searchRules,
};

/**
 * Merge parent and chunk search results, deduplicating by parent record ID.
 * For each parent ID, keep the result with the best score. If a chunk hit
 * beats the parent hit, the chunk content is preserved on the result.
 */
function mergeResults(parentResults: SearchResult[], chunkResults: SearchResult[]): SearchResult[] {
  const merged = new Map<string, SearchResult>(); // key: `${table}:${id}`

  for (const r of parentResults) {
    const key = `${r.table}:${r.id}`;
    const existing = merged.get(key);
    if (!existing || r.score > existing.score) {
      merged.set(key, r);
    }
  }

  for (const r of chunkResults) {
    const key = `${r.table}:${r.id}`;
    const existing = merged.get(key);
    if (!existing || r.score > existing.score) {
      merged.set(key, r);
    }
  }

  return Array.from(merged.values());
}

export async function search(query: string, tables?: TableName[]) {
  const ts = config.databaseName.split('-').pop();
  const ADMIN_EMAIL = `admin+${ts}@agentic-db.local`;
  const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'AgentOS2026!';

  const { token } = await authenticate(ADMIN_EMAIL, ADMIN_PASSWORD);
  const client = createAuthenticatedClient(token);
  const queryEmbedding = await embed(query);

  const targetTables = tables || (Object.keys(TABLE_SEARCH) as TableName[]);
  const parentResults: SearchResult[] = [];
  const chunkResults: SearchResult[] = [];

  for (const table of targetTables) {
    // Search parent table
    const searchFn = TABLE_SEARCH[table];
    if (searchFn) {
      try {
        const results = await searchFn(client, queryEmbedding, 3);
        parentResults.push(...results);
      } catch {
        // Model may not be available in the SDK yet; skip gracefully
      }
    }

    // Search chunk table (for deep content matching)
    const chunks = await searchChunkTable(client, table, queryEmbedding, 3);
    chunkResults.push(...chunks);
  }

  const merged = mergeResults(parentResults, chunkResults);
  return merged.sort((a, b) => b.score - a.score);
}

async function main() {
  const query = process.argv[2];
  if (!query) return;

  console.log(`\n\ud83d\udd0d Searching: "${query}"\n`);
  const results = await search(query);
  console.log('\n\ud83d\udcca Results:\n');

  for (const result of results.slice(0, 15)) {
    const scoreVal = result.score;
    const scoreBar = '\u2588'.repeat(Math.round(scoreVal * 20)) + '\u2591'.repeat(20 - Math.round(scoreVal * 20));
    const chunkLabel = result.chunkContent ? ' [chunk match]' : '';
    console.log(`   [${result.table}] ${result.name}${chunkLabel}`);
    console.log(`      Score: ${scoreBar} ${(scoreVal * 100).toFixed(1)}%`);
    if (result.table === 'contacts') console.log(`      ${(result.data as Record<string, any>).headline || ''}`);
    if (result.table === 'companies') console.log(`      ${((result.data as Record<string, any>).description || '').slice(0, 100)}...`);
    if (result.chunkContent) console.log(`      Chunk: ${result.chunkContent.slice(0, 120)}...`);
    console.log('');
  }
}

if (require.main === module) {
  main().catch((err) => {
    console.error('\u274c', err.message ?? err);
    process.exit(1);
  });
}
