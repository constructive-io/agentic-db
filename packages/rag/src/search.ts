import { config } from './config';
import { authenticate, createAuthenticatedClient } from './client';
import { embed } from './ollama';

const TEST_EMAIL = 'rag-test@example.com'; 
const TEST_PASSWORD = 'RagTest123!';

type TableName = 'contacts' | 'companies' | 'deals' | 'events' | 'venues' | 'notes' | 'expenses' | 'tasks' | 'memories' | 'skills' | 'rules';

interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  score: number;
  data: Record<string, any>;
}

const TABLE_CONFIGS: Record<string, { modelName: string; textField: string }> = {
  contacts: { modelName: 'contact', textField: 'headline' },
  companies: { modelName: 'company', textField: 'description' },
  deals: { modelName: 'deal', textField: 'name' },
  events: { modelName: 'event', textField: 'name' },
  venues: { modelName: 'venue', textField: 'name' },
  notes: { modelName: 'note', textField: 'content' },
  expenses: { modelName: 'expense', textField: 'description' },
  tasks: { modelName: 'task', textField: 'title' },
  memories: { modelName: 'memory', textField: 'content' },
  skills: { modelName: 'skill', textField: 'name' },
  rules: { modelName: 'rule', textField: 'title' },
};

async function searchTable(
  client: any,
  table: TableName,
  queryEmbedding: number[],
  limit: number = 5
): Promise<SearchResult[]> {
  const cfg = TABLE_CONFIGS[table];
  if (!cfg) return [];

  const model = client[cfg.modelName];
  if (!model) return [];

  try {
    // Convert to string "[0.1,0.2,...]" for pgvector input if needed
    const vectorArg = JSON.stringify(queryEmbedding);
    
    const res = await model.findMany({
      condition: {
        vectorEmbedding: { vector: vectorArg, distance: 2.0 } 
      },
      orderBy: ['EMBEDDING_DISTANCE_ASC'],
      first: limit,
      select: {
        id: true,
        embeddingDistance: true, 
        [cfg.textField]: true,
        ...(table === 'contacts' ? { firstName: true, lastName: true, headline: true } : {}),
        ...(table === 'companies' ? { name: true, description: true } : {}),
        ...(table === 'expenses' ? { amount: true, description: true } : {}),
        ...(table === 'events' ? { name: true, notes: true } : {}),
      }
    }).execute();

    if (!res.ok) {
      // console.warn(`Search failed for ${table}:`, JSON.stringify(res.errors));
      return [];
    }

    const dataKey = Object.keys(res.data || {})[0];
    const nodes = (res.data as any)[dataKey]?.nodes || [];

    return nodes.map((node: any) => {
        let name = 'Unknown';
        if (table === 'contacts') name = `${node.firstName} ${node.lastName}`;
        else if (table === 'expenses') name = `${node.description} ($${node.amount})`;
        else name = node[cfg.textField] || 'Untitled';

        // Score: 1 - distance/2 (Cosine distance is 0..2)
        // If distance is null, score is 0.
        const dist = node.embeddingDistance ?? 2.0;
        const score = 1 - (dist / 2.0);

        return {
            table,
            id: node.id,
            name,
            score: Math.max(0, score),
            data: node
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
  const ADMIN_PASSWORD = process.env.ADMIN_PASSWORD || 'password';

  const { token } = await authenticate(ADMIN_EMAIL, ADMIN_PASSWORD);
  const client = createAuthenticatedClient(token);

  // console.log(`\n   Embedding query...`);
  const queryEmbedding = await embed(query);

  const targetTables = tables || Object.keys(TABLE_CONFIGS) as TableName[];
  const allResults: SearchResult[] = [];

  for (const table of targetTables) {
    const results = await searchTable(client, table, queryEmbedding, 3);
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
