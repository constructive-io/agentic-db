/**
 * RAG-powered Q&A over CRM data
 * Uses embeddings to find relevant context, then LLM to answer
 */
import { config } from './config';
import { authenticate, createRawAdapter } from './client';
import { embed, chat, ChatMessage } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

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

  const tables = [
    {
      name: 'contacts',
      query: `{ contacts { nodes { id firstName lastName email headline bio embedding } } }`,
      format: (n: any) => `Contact: ${n.firstName} ${n.lastName} (${n.email || 'N/A'})\nHeadline: ${n.headline || 'N/A'}\nBio: ${n.bio || 'N/A'}`
    },
    {
      name: 'companies',
      query: `{ companies { nodes { id name domain industry description embedding } } }`,
      format: (n: any) => `Company: ${n.name} (${n.domain || 'N/A'})\nIndustry: ${n.industry}\nDescription: ${n.description}`
    },
    {
      name: 'deals',
      query: `{ deals { nodes { id name stage value notes embedding } } }`,
      format: (n: any) => `Deal: ${n.name}\nStage: ${n.stage}\nValue: $${n.value}\nNotes: ${n.notes}`
    },
    {
      name: 'tasks',
      query: `{ tasks { nodes { id title description status priority embedding } } }`,
      format: (n: any) => `Task: ${n.title}\nStatus: ${n.status} (Priority ${n.priority})\nDesc: ${n.description}`
    },
    {
      name: 'notes',
      query: `{ notes { nodes { id content embedding } } }`,
      format: (n: any) => `Note: ${n.content}`
    },
    {
      name: 'memories',
      query: `{ memories { nodes { id content tags embedding } } }`,
      format: (n: any) => `Memory: ${n.content} [${n.tags?.join(', ')}]`
    },
    {
      name: 'expenses',
      query: `{ expenses { nodes { id description amount currency category merchant date embedding } } }`,
      format: (n: any) => `Expense: ${n.description}\nAmount: ${n.amount} ${n.currency}\nCategory: ${n.category}\nMerchant: ${n.merchant}\nDate: ${n.date}`
    },
    {
      name: 'events',
      query: `{ events { nodes { id name eventType location notes embedding } } }`,
      format: (n: any) => `Event: ${n.name} (${n.eventType})\nLocation: ${n.location}\nNotes: ${n.notes}`
    }
  ];
  
  for (const t of tables) {
    const res = await adapter.execute(t.query);
    if (res.ok) {
      for (const node of (res.data as any)[t.name]?.nodes || []) {
        if (!node.embedding) continue;
        
        let emb: number[];
        if (typeof node.embedding === 'string') {
          emb = JSON.parse(node.embedding.replace(/^\[/, '[').replace(/\]$/, ']'));
        } else {
          emb = node.embedding;
        }

        const score = cosineSimilarity(queryEmbedding, emb);
        results.push({
          type: t.name.slice(0, -1), // singularish
          content: t.format(node),
          score,
        });
      }
    }
  }
  
  return results.sort((a, b) => b.score - a.score).slice(0, topK);
}

async function main() {
  const question = process.argv.slice(2).join(' ');
  
  if (!question) {
    console.log('\nUsage: pnpm --filter @agentic-sdk/rag run ask "<question>"\n');
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
    const preview = item.content.split('\n')[0].slice(0, 80);
    console.log(`   • [${item.type}] ${preview}... (${(item.score * 100).toFixed(1)}% match)`);
  }
  console.log('');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
