/**
 * CLI command: agentic-db search "<query>" [--tables contacts,notes,...]
 *
 * Performs vector similarity search across agentic-db tables using the
 * generated SDK's VectorNearbyInput condition.
 */
import { CLIOptions, Inquirerer } from 'inquirerer';
import { getClient } from '../../generated/cli/executor';
import { createEmbeddingProvider, RagProviderConfig, DEFAULT_RAG_CONFIG } from '../embeddings';
import { getRagConfig } from '../rag-config';

type TableName =
  | 'contacts'
  | 'companies'
  | 'events'
  | 'venues'
  | 'notes'
  | 'tasks'
  | 'memories'
  | 'skills'
  | 'rules'
  | 'deals'
  | 'projects'
  | 'chats';

interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  score: number;
  data: Record<string, unknown>;
}

type SDKClient = ReturnType<typeof getClient>;

const VECTOR_CONDITION = (queryEmbedding: number[]) => ({
  vectorEmbedding: {
    vector: queryEmbedding,
    metric: 'COSINE' as const,
    distance: 2.0,
  },
});

function toResult(
  table: TableName,
  node: Record<string, unknown>,
  nameFn: (n: Record<string, unknown>) => string
): SearchResult {
  return {
    table,
    id: node.id as string,
    name: nameFn(node),
    score: Math.max(0, 1 - ((node.embeddingDistance as number) ?? 2.0) / 2.0),
    data: node,
  };
}

const TABLE_SEARCH: Record<
  TableName,
  (client: SDKClient, qe: number[], limit: number) => Promise<SearchResult[]>
> = {
  contacts: async (client, qe, limit) => {
    const res = await client.contact
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: {
          id: true,
          firstName: true,
          lastName: true,
          headline: true,
          bio: true,
          embeddingDistance: true,
        },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.contacts as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).contacts as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) =>
          toResult(
            'contacts',
            n,
            (x) => `${(x.firstName as string) || ''} ${(x.lastName as string) || ''}`.trim()
          )
        )
      : [];
  },

  companies: async (client, qe, limit) => {
    const res = await client.company
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, name: true, description: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.companies as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).companies as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('companies', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  events: async (client, qe, limit) => {
    const res = await client.event
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, name: true, notes: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.events as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).events as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('events', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  venues: async (client, qe, limit) => {
    const res = await client.venue
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, name: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.venues as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).venues as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('venues', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  notes: async (client, qe, limit) => {
    const res = await client.note
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, content: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.notes as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).notes as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) =>
          toResult(
            'notes',
            n,
            (x) => ((x.content as string) || '').slice(0, 80) || 'Untitled'
          )
        )
      : [];
  },

  tasks: async (client, qe, limit) => {
    const res = await client.task
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, title: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.tasks as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).tasks as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('tasks', n, (x) => (x.title as string) || 'Untitled'))
      : [];
  },

  memories: async (client, qe, limit) => {
    const res = await client.memory
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, content: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.memories as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).memories as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) =>
          toResult(
            'memories',
            n,
            (x) => ((x.content as string) || '').slice(0, 80) || 'Untitled'
          )
        )
      : [];
  },

  skills: async (client, qe, limit) => {
    const res = await client.skill
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, name: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.skills as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).skills as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('skills', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  rules: async (client, qe, limit) => {
    const res = await client.rule
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, title: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.rules as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).rules as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('rules', n, (x) => (x.title as string) || 'Untitled'))
      : [];
  },

  deals: async (client, qe, limit) => {
    const res = await client.deal
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, name: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.deals as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).deals as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('deals', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  projects: async (client, qe, limit) => {
    const res = await client.project
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, name: true, description: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.projects as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).projects as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('projects', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  chats: async (client, qe, limit) => {
    const res = await client.chat
      .findMany({
        condition: VECTOR_CONDITION(qe),
        first: limit,
        select: { id: true, title: true, embeddingDistance: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.chats as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).chats as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('chats', n, (x) => (x.title as string) || 'Untitled'))
      : [];
  },
};

export async function searchAll(
  query: string,
  config: RagProviderConfig,
  tables?: TableName[],
  limit = 3
): Promise<SearchResult[]> {
  const embedder = createEmbeddingProvider(config);
  const client = getClient();
  const queryEmbedding = await embedder.embed(query);

  const targetTables = tables || (Object.keys(TABLE_SEARCH) as TableName[]);
  const allResults: SearchResult[] = [];

  const searchPromises = targetTables.map(async (table) => {
    const searchFn = TABLE_SEARCH[table];
    if (searchFn) {
      try {
        const results = await searchFn(client, queryEmbedding, limit);
        return results;
      } catch {
        // Table might not have embeddings, skip silently
        return [];
      }
    }
    return [];
  });

  const resultArrays = await Promise.all(searchPromises);
  for (const results of resultArrays) {
    allResults.push(...results);
  }

  return allResults.sort((a, b) => b.score - a.score);
}

const ALL_TABLES = Object.keys(TABLE_SEARCH) as TableName[];

const usage = `
search <query> [options]

  Semantic search across agentic-db tables using vector embeddings.

Options:
  --tables <list>    Comma-separated tables to search (default: all)
  --limit <n>        Results per table (default: 3)
  --json             Output raw JSON

Available tables: ${ALL_TABLES.join(', ')}

Examples:
  agentic-db search "AI contacts"
  agentic-db search "dinner last month" --tables events,contacts,expenses
  agentic-db search "project deadlines" --limit 5 --json
`;

export default async (
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer,
  _options: CLIOptions
) => {
  if (argv.help || argv.h) {
    console.log(usage);
    return;
  }

  // Get query from positional args or prompt
  let query = argv._
    ? (argv._ as string[]).filter((a) => typeof a === 'string' && a !== 'search').join(' ')
    : '';

  if (!query) {
    const answers = await prompter.prompt(argv, [
      { type: 'text', name: 'query', message: 'Search query:', required: true },
    ]);
    query = answers.query as string;
  }

  const config = getRagConfig();
  const tables = argv.tables
    ? (argv.tables as string).split(',').map((t) => t.trim() as TableName)
    : undefined;
  const limit = argv.limit ? parseInt(String(argv.limit), 10) : 3;

  console.log(`\nSearching: "${query}"\n`);

  const results = await searchAll(query, config, tables, limit);

  if (argv.json) {
    console.log(JSON.stringify(results, null, 2));
    return;
  }

  if (results.length === 0) {
    console.log('No results found.');
    return;
  }

  console.log(`Found ${results.length} results:\n`);

  for (const result of results.slice(0, 15)) {
    const pct = (result.score * 100).toFixed(1);
    const bar = '#'.repeat(Math.round(result.score * 20)).padEnd(20, '-');
    console.log(`  [${result.table}] ${result.name}`);
    console.log(`    Score: ${bar} ${pct}%`);
    console.log('');
  }
};
