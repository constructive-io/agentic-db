import http from 'node:http';
import { config } from './config';
import { authenticate } from './client';
import { embed } from './ollama';

type TableName = 'contacts' | 'companies' | 'events' | 'venues' | 'notes' | 'expenses' | 'tasks' | 'memories' | 'skills' | 'rules';

interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  score: number;
  data: Record<string, any>;
}

const TABLE_CONFIGS: Record<string, { plural: string; fields: string }> = {
  contacts: {
    plural: 'contacts',
    fields: 'id firstName lastName headline bio embeddingDistance',
  },
  companies: {
    plural: 'companies',
    fields: 'id name description embeddingDistance',
  },
  events: {
    plural: 'events',
    fields: 'id name notes embeddingDistance',
  },
  venues: {
    plural: 'venues',
    fields: 'id name embeddingDistance',
  },
  notes: {
    plural: 'notes',
    fields: 'id content embeddingDistance',
  },
  expenses: {
    plural: 'expenses',
    fields: 'id description amount embeddingDistance',
  },
  tasks: {
    plural: 'tasks',
    fields: 'id title embeddingDistance',
  },
  memories: {
    plural: 'memories',
    fields: 'id content embeddingDistance',
  },
  skills: {
    plural: 'skills',
    fields: 'id name embeddingDistance',
  },
  rules: {
    plural: 'rules',
    fields: 'id title embeddingDistance',
  },
};

async function rawGraphQL(token: string, query: string, variables?: Record<string, any>): Promise<any> {
  const body = JSON.stringify({ query, variables });
  return new Promise<any>((resolve, reject) => {
    const req = http.request({
      hostname: '::1',
      port: 3000,
      path: '/graphql',
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Host': config.appHost,
        'Authorization': `Bearer ${token}`,
        'Content-Length': Buffer.byteLength(body),
      },
    }, (res) => {
      let data = '';
      res.on('data', (chunk) => data += chunk);
      res.on('end', () => {
        try { resolve(JSON.parse(data)); }
        catch (e) { reject(new Error(`Invalid JSON: ${data.slice(0, 200)}`)); }
      });
    });
    req.on('error', reject);
    req.write(body);
    req.end();
  });
}

async function searchTable(
  token: string,
  table: TableName,
  queryEmbedding: number[],
  limit: number = 5
): Promise<SearchResult[]> {
  const cfg = TABLE_CONFIGS[table];
  if (!cfg) return [];

  const query = `
    query VectorSearch($vector: [Float!]!, $limit: Int!) {
      ${cfg.plural}(
        condition: { vectorEmbedding: { vector: $vector, metric: COSINE, distance: 2.0 } }
        orderBy: EMBEDDING_DISTANCE_ASC
        first: $limit
      ) {
        nodes { ${cfg.fields} }
      }
    }
  `;

  try {
    const result = await rawGraphQL(token, query, {
      vector: queryEmbedding,
      limit,
    });

    if (result.errors) {
      console.warn(`Search failed for ${table}:`, JSON.stringify(result.errors));
      return [];
    }

    const nodes = result.data?.[cfg.plural]?.nodes || [];

    return nodes.map((node: any) => {
      let name = 'Unknown';
      if (table === 'contacts') name = `${node.firstName || ''} ${node.lastName || ''}`.trim();
      else if (table === 'expenses') name = `${node.description} ($${node.amount})`;
      else name = node.name || node.title || node.content?.slice(0, 80) || 'Untitled';

      const dist = node.embeddingDistance ?? 2.0;
      const score = 1 - (dist / 2.0);

      return {
        table,
        id: node.id,
        name,
        score: Math.max(0, score),
        data: node,
      };
    });
  } catch (e) {
    console.error(`Error searching ${table}:`, e);
    return [];
  }
}

export async function search(query: string, tables?: TableName[]) {
  const ts = config.databaseName.split('-').pop();
  const ADMIN_EMAIL = `admin+${ts}@agent-os.local`;
  const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'AgentOS2026!';

  const { token } = await authenticate(ADMIN_EMAIL, ADMIN_PASSWORD);

  const queryEmbedding = await embed(query);

  const targetTables = tables || (Object.keys(TABLE_CONFIGS) as TableName[]);
  const allResults: SearchResult[] = [];

  for (const table of targetTables) {
    const results = await searchTable(token, table, queryEmbedding, 3);
    allResults.push(...results);
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
