import { config } from './config';
import { authenticate, createAuthenticatedClient } from './client';
import { embed } from './ollama';

type TableName = 'contacts' | 'companies' | 'events' | 'venues' | 'notes' | 'expenses' | 'tasks' | 'memories' | 'skills' | 'rules';

interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  score: number;
  data: Record<string, any>;
}

type SDKClient = ReturnType<typeof createAuthenticatedClient>;

const VECTOR_CONDITION = (queryEmbedding: number[]) => ({
  vectorEmbedding: { vector: queryEmbedding, metric: 'COSINE' as const, distance: 2.0 },
});

function toResult(table: TableName, node: any, nameFn: (n: any) => string): SearchResult {
  return {
    table,
    id: node.id,
    name: nameFn(node),
    score: Math.max(0, 1 - ((node.embeddingDistance ?? 2.0) / 2.0)),
    data: node,
  };
}

async function searchContacts(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.contact.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, firstName: true, lastName: true, headline: true, bio: true, embeddingDistance: true },
  }).execute();
  return (res.data?.contacts?.nodes || []).map((n: any) =>
    toResult('contacts', n, (x) => `${x.firstName || ''} ${x.lastName || ''}`.trim()));
}

async function searchCompanies(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.company.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, description: true, embeddingDistance: true },
  }).execute();
  return (res.data?.companies?.nodes || []).map((n: any) => toResult('companies', n, (x) => x.name || 'Untitled'));
}

async function searchEvents(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.event.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, notes: true, embeddingDistance: true },
  }).execute();
  return (res.data?.events?.nodes || []).map((n: any) => toResult('events', n, (x) => x.name || 'Untitled'));
}

async function searchVenues(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.venue.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, embeddingDistance: true },
  }).execute();
  return (res.data?.venues?.nodes || []).map((n: any) => toResult('venues', n, (x) => x.name || 'Untitled'));
}

async function searchNotes(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.note.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, content: true, embeddingDistance: true },
  }).execute();
  return (res.data?.notes?.nodes || []).map((n: any) => toResult('notes', n, (x) => (x.content || '').slice(0, 80) || 'Untitled'));
}

async function searchExpenses(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.expense.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, description: true, amount: true, embeddingDistance: true },
  }).execute();
  return (res.data?.expenses?.nodes || []).map((n: any) => toResult('expenses', n, (x) => `${x.description} ($${x.amount})`));
}

async function searchTasks(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.task.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, title: true, embeddingDistance: true },
  }).execute();
  return (res.data?.tasks?.nodes || []).map((n: any) => toResult('tasks', n, (x) => x.title || 'Untitled'));
}

async function searchMemories(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.memory.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, content: true, embeddingDistance: true },
  }).execute();
  return (res.data?.memories?.nodes || []).map((n: any) => toResult('memories', n, (x) => (x.content || '').slice(0, 80) || 'Untitled'));
}

async function searchSkills(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.skill.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, name: true, embeddingDistance: true },
  }).execute();
  return (res.data?.skills?.nodes || []).map((n: any) => toResult('skills', n, (x) => x.name || 'Untitled'));
}

async function searchRules(client: SDKClient, qe: number[], limit: number): Promise<SearchResult[]> {
  const res = await client.rule.findMany({
    condition: VECTOR_CONDITION(qe), first: limit,
    select: { id: true, title: true, embeddingDistance: true },
  }).execute();
  return (res.data?.rules?.nodes || []).map((n: any) => toResult('rules', n, (x) => x.title || 'Untitled'));
}

const TABLE_SEARCH: Record<TableName, (client: SDKClient, qe: number[], limit: number) => Promise<SearchResult[]>> = {
  contacts: searchContacts, companies: searchCompanies, events: searchEvents,
  venues: searchVenues, notes: searchNotes, expenses: searchExpenses,
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
  const allResults: SearchResult[] = [];

  for (const table of targetTables) {
    const searchFn = TABLE_SEARCH[table];
    if (searchFn) {
      const results = await searchFn(client, queryEmbedding, 3);
      allResults.push(...results);
    }
  }

  return allResults.sort((a, b) => b.score - a.score);
}

async function main() {
  const query = process.argv[2];
  if (!query) return;

  console.log(`\n🔍 Searching: "${query}"\n`);
  const results = await search(query);
  console.log('\n📊 Results:\n');

  for (const result of results.slice(0, 15)) {
    const scoreVal = result.score;
    const scoreBar = '█'.repeat(Math.round(scoreVal * 20)) + '░'.repeat(20 - Math.round(scoreVal * 20));
    console.log(`   [${result.table}] ${result.name}`);
    console.log(`      Score: ${scoreBar} ${(scoreVal * 100).toFixed(1)}%`);
    if (result.table === 'contacts') console.log(`      ${result.data.headline || ''}`);
    if (result.table === 'companies') console.log(`      ${(result.data.description || '').slice(0, 100)}...`);
    console.log('');
  }
}

if (require.main === module) {
  main().catch((err) => {
    console.error('❌', err.message ?? err);
    process.exit(1);
  });
}
