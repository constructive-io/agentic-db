/**
 * CLI command: agentic-db search "<query>" [--tables contacts,notes,...]
 *
 * Performs hybrid search (vector + fullTextSearch) across agentic-db tables.
 * fullTextSearch dispatches to tsvector, BM25, and pg_trgm simultaneously;
 * combined with vector similarity, searchScore reflects a true blended rank.
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
  | 'conversations';

interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  score: number;
  data: Record<string, unknown>;
}

type SDKClient = ReturnType<typeof getClient>;

/**
 * Build a hybrid search condition for ORM findMany queries.
 *
 * Combines vector similarity (cosine distance on embeddings) with
 * fullTextSearch — a composite filter that dispatches the raw query
 * string to tsvector, BM25, and pg_trgm simultaneously.  Rows matching
 * ANY text algorithm are returned and searchScore reflects a true blended
 * rank across all active signals.
 */
const HYBRID_CONDITION = (query: string, queryEmbedding: number[]) => ({
  or: [
    {
      vectorEmbedding: {
        vector: queryEmbedding,
        metric: 'COSINE' as const,
        distance: 2.0,
      },
    },
    {
      fullTextSearch: query,
    },
  ],
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
    score: (node.searchScore as number) ?? 0,
    data: node,
  };
}

const TABLE_SEARCH: Record<
  TableName,
  (client: SDKClient, query: string, qe: number[], limit: number) => Promise<SearchResult[]>
> = {
  contacts: async (client, query, qe, limit) => {
    const res = await client.contact
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: {
          id: true,
          firstName: true,
          lastName: true,
          headline: true,
          bio: true,
          searchScore: true,
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

  companies: async (client, query, qe, limit) => {
    const res = await client.company
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, name: true, description: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.companies as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).companies as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('companies', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  events: async (client, query, qe, limit) => {
    const res = await client.event
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, name: true, notesText: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.events as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).events as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('events', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  venues: async (client, query, qe, limit) => {
    const res = await client.venue
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, name: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.venues as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).venues as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('venues', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  notes: async (client, query, qe, limit) => {
    const res = await client.note
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, content: true, searchScore: true },
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

  tasks: async (client, query, qe, limit) => {
    const res = await client.task
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, title: true, description: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.tasks as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).tasks as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('tasks', n, (x) => (x.title as string) || 'Untitled'))
      : [];
  },

  memories: async (client, query, qe, limit) => {
    const res = await client.memory
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, content: true, searchScore: true },
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

  skills: async (client, query, qe, limit) => {
    const res = await client.skill
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, name: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.skills as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).skills as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('skills', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  rules: async (client, query, qe, limit) => {
    const res = await client.rule
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, name: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.rules as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).rules as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('rules', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  deals: async (client, query, qe, limit) => {
    const res = await client.deal
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, name: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.deals as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).deals as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('deals', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  projects: async (client, query, qe, limit) => {
    const res = await client.project
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, name: true, description: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.projects as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).projects as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('projects', n, (x) => (x.name as string) || 'Untitled'))
      : [];
  },

  conversations: async (client, query, qe, limit) => {
    const res = await client.conversation
      .findMany({
        where: HYBRID_CONDITION(query, qe),
        first: limit,
        select: { id: true, title: true, searchScore: true },
      })
      .execute();
    return ((res.data as Record<string, unknown>)?.conversations as Record<string, unknown>)
      ? (
          ((res.data as Record<string, unknown>).conversations as Record<string, unknown>)
            .nodes as Record<string, unknown>[]
        ).map((n) => toResult('conversations', n, (x) => (x.title as string) || 'Untitled'))
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
        const results = await searchFn(client, query, queryEmbedding, limit);
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

  Hybrid search across agentic-db tables using vector embeddings + full-text search.

Options:
  --tables <list>    Comma-separated tables to search (default: all)
  --limit <n>        Results per table (default: 3)
  --json             Output raw JSON

Available tables: ${ALL_TABLES.join(', ')}

Examples:
  agentic-db search "AI contacts"
  agentic-db search "dinner last month" --tables events,contacts,deals
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
