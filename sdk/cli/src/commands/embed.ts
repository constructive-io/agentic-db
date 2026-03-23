/**
 * CLI command: agentic-db embed [--table contacts] [--all] [--id <uuid>]
 *
 * Generate vector embeddings for records in agentic-db tables.
 */
import { CLIOptions, Inquirerer } from 'inquirerer';
import { getClient } from '../../generated/cli/executor';
import { createEmbeddingProvider } from '../embeddings';
import { getRagConfig } from '../rag-config';

type EmbeddableTable =
  | 'contacts'
  | 'companies'
  | 'events'
  | 'venues'
  | 'notes'
  | 'agentTasks'
  | 'memories'
  | 'skills'
  | 'rules'
  | 'deals'
  | 'projects';

interface TableEmbedConfig {
  listFn: (client: ReturnType<typeof getClient>) => Promise<Record<string, unknown>[]>;
  textFn: (record: Record<string, unknown>) => string;
  updateFn: (
    client: ReturnType<typeof getClient>,
    id: string,
    embedding: string
  ) => Promise<unknown>;
}

function extractNodes(data: unknown, tableName: string): Record<string, unknown>[] {
  const d = data as Record<string, unknown>;
  const table = d?.[tableName] as Record<string, unknown> | undefined;
  return (table?.nodes as Record<string, unknown>[]) || [];
}

function vectorToString(vec: number[]): string {
  return `[${vec.join(',')}]`;
}

const TABLE_CONFIGS: Record<EmbeddableTable, TableEmbedConfig> = {
  contacts: {
    listFn: async (client) => {
      const res = await client.contact
        .findMany({
          select: {
            id: true,
            firstName: true,
            lastName: true,
            headline: true,
            bio: true,
            email: true,
            location: true,
          },
        })
        .execute();
      return extractNodes(res.data, 'contacts');
    },
    textFn: (r) =>
      [r.firstName, r.lastName, r.headline, r.bio, r.email, r.location]
        .filter(Boolean)
        .join(' '),
    updateFn: async (client, id, embedding) =>
      client.contact.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  companies: {
    listFn: async (client) => {
      const res = await client.company
        .findMany({
          select: { id: true, name: true, description: true },
        })
        .execute();
      return extractNodes(res.data, 'companies');
    },
    textFn: (r) => [r.name, r.description].filter(Boolean).join(' '),
    updateFn: async (client, id, embedding) =>
      client.company
        .update({ where: { id }, data: { embedding }, select: { id: true } })
        .execute(),
  },

  events: {
    listFn: async (client) => {
      const res = await client.event
        .findMany({
          select: { id: true, name: true, notesText: true },
        })
        .execute();
      return extractNodes(res.data, 'events');
    },
    textFn: (r) => [r.name, r.notesText].filter(Boolean).join(' '),
    updateFn: async (client, id, embedding) =>
      client.event.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  venues: {
    listFn: async (client) => {
      const res = await client.venue
        .findMany({
          select: { id: true, name: true },
        })
        .execute();
      return extractNodes(res.data, 'venues');
    },
    textFn: (r) => [r.name].filter(Boolean).join(' '),
    updateFn: async (client, id, embedding) =>
      client.venue.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  notes: {
    listFn: async (client) => {
      const res = await client.note
        .findMany({
          select: { id: true, content: true },
        })
        .execute();
      return extractNodes(res.data, 'notes');
    },
    textFn: (r) => (r.content as string) || '',
    updateFn: async (client, id, embedding) =>
      client.note.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  agentTasks: {
    listFn: async (client) => {
      const res = await client.agentTask
        .findMany({
          select: { id: true, title: true, description: true },
        })
        .execute();
      return extractNodes(res.data, 'agentTasks');
    },
    textFn: (r) => [r.title, r.description].filter(Boolean).join(' '),
    updateFn: async (client, id, embedding) =>
      client.agentTask.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  memories: {
    listFn: async (client) => {
      const res = await client.memory
        .findMany({
          select: { id: true, content: true },
        })
        .execute();
      return extractNodes(res.data, 'memories');
    },
    textFn: (r) => (r.content as string) || '',
    updateFn: async (client, id, embedding) =>
      client.memory
        .update({ where: { id }, data: { embedding }, select: { id: true } })
        .execute(),
  },

  skills: {
    listFn: async (client) => {
      const res = await client.skill
        .findMany({
          select: { id: true, name: true, description: true },
        })
        .execute();
      return extractNodes(res.data, 'skills');
    },
    textFn: (r) => [r.name, r.description].filter(Boolean).join(' '),
    updateFn: async (client, id, embedding) =>
      client.skill.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  rules: {
    listFn: async (client) => {
      const res = await client.rule
        .findMany({
          select: { id: true, name: true, description: true },
        })
        .execute();
      return extractNodes(res.data, 'rules');
    },
    textFn: (r) => [r.name, r.description].filter(Boolean).join(' '),
    updateFn: async (client, id, embedding) =>
      client.rule.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  deals: {
    listFn: async (client) => {
      const res = await client.deal
        .findMany({
          select: { id: true, name: true },
        })
        .execute();
      return extractNodes(res.data, 'deals');
    },
    textFn: (r) => (r.name as string) || '',
    updateFn: async (client, id, embedding) =>
      client.deal.update({ where: { id }, data: { embedding }, select: { id: true } }).execute(),
  },

  projects: {
    listFn: async (client) => {
      const res = await client.project
        .findMany({
          select: { id: true, name: true, description: true },
        })
        .execute();
      return extractNodes(res.data, 'projects');
    },
    textFn: (r) => [r.name, r.description].filter(Boolean).join(' '),
    updateFn: async (client, id, embedding) =>
      client.project
        .update({ where: { id }, data: { embedding }, select: { id: true } })
        .execute(),
  },
};

const ALL_TABLES = Object.keys(TABLE_CONFIGS) as EmbeddableTable[];

const usage = `
embed [options]

  Generate vector embeddings for records in agentic-db tables.

Options:
  --table <name>     Table to embed (required unless --all)
  --all              Embed all tables
  --json             Output progress as JSON

Available tables: ${ALL_TABLES.join(', ')}

Examples:
  agentic-db embed --table contacts
  agentic-db embed --all
`;

async function embedTable(
  tableName: EmbeddableTable,
  asJson: boolean
): Promise<{ table: string; embedded: number; errors: number }> {
  const config = getRagConfig();
  const embedder = createEmbeddingProvider(config);
  const client = getClient();
  const tableConfig = TABLE_CONFIGS[tableName];

  if (!tableConfig) {
    console.error(`Unknown table: ${tableName}`);
    return { table: tableName, embedded: 0, errors: 1 };
  }

  const records = await tableConfig.listFn(client);

  if (!asJson) {
    console.log(`\n  ${tableName}: ${records.length} records`);
  }

  let embedded = 0;
  let errors = 0;

  for (const record of records) {
    const text = tableConfig.textFn(record);
    if (!text.trim()) continue;

    try {
      const vector = await embedder.embed(text);
      await tableConfig.updateFn(client, record.id as string, vectorToString(vector));
      embedded++;
      if (!asJson) {
        process.stdout.write(`    Embedded ${embedded}/${records.length}\r`);
      }
    } catch (err) {
      errors++;
      if (!asJson) {
        console.error(
          `    Error embedding ${record.id}: ${err instanceof Error ? err.message : err}`
        );
      }
    }
  }

  if (!asJson) {
    console.log(`    Done: ${embedded} embedded, ${errors} errors`);
  }

  return { table: tableName, embedded, errors };
}

export default async (
  argv: Partial<Record<string, unknown>>,
  prompter: Inquirerer,
  _options: CLIOptions
) => {
  if (argv.help || argv.h) {
    console.log(usage);
    return;
  }

  const asJson = !!argv.json;

  if (argv.all) {
    console.log('Embedding all tables...\n');
    const results = [];
    for (const table of ALL_TABLES) {
      const result = await embedTable(table, asJson);
      results.push(result);
    }
    if (asJson) {
      console.log(JSON.stringify(results, null, 2));
    } else {
      console.log('\nSummary:');
      for (const r of results) {
        console.log(`  ${r.table}: ${r.embedded} embedded, ${r.errors} errors`);
      }
    }
    return;
  }

  let table = argv.table as string | undefined;
  if (!table) {
    const answers = await prompter.prompt(argv, [
      {
        type: 'autocomplete',
        name: 'table',
        message: 'Which table to embed?',
        options: ALL_TABLES,
      },
    ]);
    table = answers.table as string;
  }

  const result = await embedTable(table as EmbeddableTable, asJson);
  if (asJson) {
    console.log(JSON.stringify(result, null, 2));
  }
};
