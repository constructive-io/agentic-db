/**
 * RAG-powered Q&A over CRM data
 * Uses embeddings to find relevant context, then LLM to answer
 */
import { config } from './config';
import { authenticate, createRawAdapter } from './client';
import { embed, chat, ChatMessage } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

type TableName = 'contacts' | 'companies' | 'deals';

interface ContextItem {
  type: string;
  content: string;
  score: number;
}

function cosineSimilarity(a: number[], b: number[]): number {
  if (a.length !== b.length) return 0;
  let dotProduct = 0, normA = 0, normB = 0;
  for (let i = 0; i < a.length; i++) {
    dotProduct += a[i] * b[i];
    normA += a[i] * a[i];
    normB += b[i] * b[i];
  }
  return dotProduct / (Math.sqrt(normA) * Math.sqrt(normB));
}

async function gatherContext(
  adapter: any,
  queryEmbedding: number[],
  topK: number = 5
): Promise<ContextItem[]> {
  const results: ContextItem[] = [];
  
  // Fetch contacts
  const contactsResult = await adapter.execute(`{
    contacts { nodes { id firstName lastName email headline bio embedding } }
  }`);
  
  if (contactsResult.ok) {
    for (const node of (contactsResult.data as any).contacts?.nodes || []) {
      if (!node.embedding) continue;
      const emb = typeof node.embedding === 'string' 
        ? JSON.parse(node.embedding) 
        : node.embedding;
      const score = cosineSimilarity(queryEmbedding, emb);
      results.push({
        type: 'contact',
        content: `Contact: ${node.firstName} ${node.lastName} (${node.email})\nHeadline: ${node.headline}\nBio: ${node.bio}`,
        score,
      });
    }
  }
  
  // Fetch companies
  const companiesResult = await adapter.execute(`{
    companies { nodes { id name domain industry description embedding } }
  }`);
  
  if (companiesResult.ok) {
    for (const node of (companiesResult.data as any).companies?.nodes || []) {
      if (!node.embedding) continue;
      const emb = typeof node.embedding === 'string' 
        ? JSON.parse(node.embedding) 
        : node.embedding;
      const score = cosineSimilarity(queryEmbedding, emb);
      results.push({
        type: 'company',
        content: `Company: ${node.name} (${node.domain})\nIndustry: ${node.industry}\nDescription: ${node.description}`,
        score,
      });
    }
  }
  
  // Fetch deals
  const dealsResult = await adapter.execute(`{
    deals { nodes { id name stage value notes embedding } }
  }`);
  
  if (dealsResult.ok) {
    for (const node of (dealsResult.data as any).deals?.nodes || []) {
      if (!node.embedding) continue;
      const emb = typeof node.embedding === 'string' 
        ? JSON.parse(node.embedding) 
        : node.embedding;
      const score = cosineSimilarity(queryEmbedding, emb);
      results.push({
        type: 'deal',
        content: `Deal: ${node.name}\nStage: ${node.stage}\nValue: $${node.value}\nNotes: ${node.notes}`,
        score,
      });
    }
  }
  
  return results.sort((a, b) => b.score - a.score).slice(0, topK);
}

async function main() {
  const question = process.argv.slice(2).join(' ');
  
  if (!question) {
    console.log('\nUsage: pnpm --filter @agentic-sdk/rag run ask "<question>"\n');
    console.log('Examples:');
    console.log('  pnpm --filter @agentic-sdk/rag run ask "Who are the Postgres experts?"');
    console.log('  pnpm --filter @agentic-sdk/rag run ask "What companies are in the database space?"');
    console.log('  pnpm --filter @agentic-sdk/rag run ask "Tell me about the enterprise deals"');
    console.log('  pnpm --filter @agentic-sdk/rag run ask "Who founded Constructive?"');
    process.exit(0);
  }

  console.log(`\n❓ Question: "${question}"\n`);

  // Authenticate
  console.log('🔐 Authenticating...');
  const { token } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  const adapter = createRawAdapter(token);

  // Embed question
  console.log('🧠 Embedding question...');
  const queryEmbedding = await embed(question);

  // Gather relevant context
  console.log('📚 Gathering context...');
  const context = await gatherContext(adapter, queryEmbedding, 5);

  if (context.length === 0) {
    console.log('\n⚠️  No relevant data found. Try seeding data first:');
    console.log('   pnpm --filter @agentic-sdk/rag run seed\n');
    process.exit(0);
  }

  console.log(`   Found ${context.length} relevant items\n`);

  // Build prompt
  const contextText = context
    .map((item, i) => `[${i + 1}] ${item.content}`)
    .join('\n\n');

  const systemPrompt = `You are a helpful CRM assistant. Answer questions based on the provided context from the CRM database. Be concise and specific. If the answer isn't in the context, say so.`;

  const userPrompt = `Context from CRM database:

${contextText}

Question: ${question}

Answer based on the context above:`;

  // Get LLM response
  console.log('💬 Generating answer...\n');
  
  const messages: ChatMessage[] = [
    { role: 'system', content: systemPrompt },
    { role: 'user', content: userPrompt },
  ];

  const answer = await chat(messages);

  console.log('─'.repeat(60));
  console.log('\n📝 Answer:\n');
  console.log(answer);
  console.log('\n' + '─'.repeat(60));
  
  console.log('\n📊 Sources used:\n');
  for (const item of context) {
    const preview = item.content.split('\n')[0];
    console.log(`   • [${item.type}] ${preview} (${(item.score * 100).toFixed(1)}% match)`);
  }
  console.log('');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
