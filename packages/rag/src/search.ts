/**
 * Semantic search across CRM data using embeddings
 */
import { config } from './config';
import { authenticate, createRawAdapter } from './client';
import { embed, vectorToString } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

type TableName = 'contacts' | 'companies' | 'deals' | 'events' | 'venues' | 'notes' | 'tasks' | 'memories' | 'skills' | 'rules' | 'expenses' | 'repositories' | 'files' | 'chunks' | 'messages';

interface SearchResult {
  table: TableName;
  id: string;
  name: string;
  score: number;
  data: Record<string, any>;
}

async function searchTable(
  adapter: any,
  table: TableName,
  queryEmbedding: number[],
  limit: number = 5
): Promise<SearchResult[]> {
  // Use raw SQL via a custom function or direct query
  // For now, we'll fetch all and compute similarity in JS
  // In production, you'd use pgvector's <=> operator via a custom GraphQL query
  
  const tableToQuery: Record<TableName, string> = {
    contacts: `{ contacts { nodes { id firstName lastName email headline bio embedding } } }`,
    companies: `{ companies { nodes { id name domain industry description embedding } } }`,
    deals: `{ deals { nodes { id name stage value notes embedding } } }`,
    events: `{ events { nodes { id name eventType location city notes embedding } } }`,
    venues: `{ venues { nodes { id name neighborhood city notes embedding } } }`,
    notes: `{ notes { nodes { id content embedding } } }`,
    tasks: `{ tasks { nodes { id title description status embedding } } }`,
    memories: `{ memories { nodes { id content tags embedding } } }`,
    skills: `{ skills { nodes { id name description content embedding } } }`,
    rules: `{ rules { nodes { id title content kind embedding } } }`,
    expenses: `{ expenses { nodes { id description category amount merchant embedding } } }`,
    repositories: `{ repositories { nodes { id name description embedding } } }`,
    files: `{ files { nodes { id path language } } }`,
    chunks: `{ chunks { nodes { id content embedding } } }`,
    messages: `{ messages { nodes { id subject bodyText from embedding } } }`,
  };

  const result = await adapter.execute(tableToQuery[table]);
  
  if (!result.ok || !result.data) {
    return [];
  }

  const nodes = (result.data as any)[table]?.nodes || [];
  
  // Compute cosine similarity
  const results: SearchResult[] = [];
  
  for (const node of nodes) {
    if (!node.embedding) continue;
    
    // Parse embedding string to array
    let nodeEmbedding: number[];
    if (typeof node.embedding === 'string') {
      nodeEmbedding = JSON.parse(node.embedding.replace(/^\[/, '[').replace(/\]$/, ']'));
    } else {
      nodeEmbedding = node.embedding;
    }
    
    const score = cosineSimilarity(queryEmbedding, nodeEmbedding);
    
    // Get display name
    let name = '';
    if (table === 'contacts') name = `${node.firstName} ${node.lastName}`;
    else if (table === 'notes' || table === 'memories' || table === 'chunks') name = node.content?.slice(0, 50) + '...';
    else if (table === 'messages') name = node.subject;
    else if (table === 'expenses') name = `${node.description} ($${node.amount})`;
    else name = node.name || node.title || node.path || 'Unknown';
    
    results.push({
      table,
      id: node.id,
      name,
      score,
      data: node,
    });
  }
  
  return results.sort((a, b) => b.score - a.score).slice(0, limit);
}

function cosineSimilarity(a: number[], b: number[]): number {
  if (a.length !== b.length) return 0;
  
  let dotProduct = 0;
  let normA = 0;
  let normB = 0;
  
  for (let i = 0; i < a.length; i++) {
    dotProduct += a[i] * b[i];
    normA += a[i] * a[i];
    normB += b[i] * b[i];
  }
  
  return dotProduct / (Math.sqrt(normA) * Math.sqrt(normB));
}

async function main() {
  const query = process.argv[2];
  const allTables: TableName[] = ['contacts', 'companies', 'deals', 'events', 'venues', 'notes', 'tasks', 'memories', 'skills', 'rules', 'expenses', 'repositories', 'messages'];
  
  const tables = (process.argv[3]?.split(',') as TableName[]) || allTables;
  
  if (!query) {
    console.log('\nUsage: pnpm --filter @agentic-sdk/rag run search "<query>" [tables]\n');
    console.log('Examples:');
    console.log('  pnpm --filter @agentic-sdk/rag run search "postgres experts"');
    console.log('  pnpm --filter @agentic-sdk/rag run search "enterprise deals" deals');
    console.log('  pnpm --filter @agentic-sdk/rag run search "database companies" companies');
    process.exit(0);
  }

  console.log(`\n🔍 Searching: "${query}"\n`);
  // console.log(`   Tables: ${tables.join(', ')}`);

  // Authenticate
  const { token } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  const adapter = createRawAdapter(token);

  // Embed query
  console.log('\n   Embedding query...');
  const queryEmbedding = await embed(query);

  // Search each table
  const allResults: SearchResult[] = [];
  
  for (const table of tables) {
    process.stdout.write(`   Searching ${table}... `);
    const results = await searchTable(adapter, table, queryEmbedding, 3);
    console.log(`Found ${results.length}`);
    allResults.push(...results);
  }

  // Sort by score and display
  allResults.sort((a, b) => b.score - a.score);

  console.log('\n📊 Results:\n');
  
  for (const result of allResults.slice(0, 15)) {
    const scoreBar = '█'.repeat(Math.round(result.score * 20)) + '░'.repeat(20 - Math.round(result.score * 20));
    console.log(`   [${result.table}] ${result.name}`);
    console.log(`      Score: ${scoreBar} ${(result.score * 100).toFixed(1)}%`);
    
    // Show relevant fields
    if (result.table === 'contacts' && result.data.headline) {
      console.log(`      ${result.data.headline}`);
    } else if (result.table === 'companies' && result.data.description) {
      console.log(`      ${result.data.description.slice(0, 100)}...`);
    } else if (result.table === 'expenses') {
      console.log(`      Date: ${result.data.occurredAt || 'N/A'}`);
    }
    console.log('');
  }
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
