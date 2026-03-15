import { search, TableName, TABLE_SEARCH } from './search';
import { AgentKit, OllamaAdapter, AnthropicAdapter } from 'agentic-kit';
import { config } from './config';

async function main() {
  const args = process.argv.slice(2);
  const isContextMode = args.includes('--context');
  const isClaudeMode = args.includes('--claude');
  const isSinglePassMode = args.includes('--single-pass');
  
  const questionArgs = args.filter(a => a !== '--context' && a !== '--claude' && a !== '--single-pass');
  const question = questionArgs.join(' ');
  
  if (!question) {
    console.log('\nUsage: pnpm run ask "<question>" [--context] [--claude] [--single-pass]\n');
    process.exit(0);
  }

  console.log(`\n❓ Question: "${question}"\n`);

  // Initialize AgentKit
  const kit = new AgentKit();
  kit.addProvider(new OllamaAdapter(config.ollamaUrl));
  
  if (process.env.ANTHROPIC_API_KEY) {
    kit.addProvider(new AnthropicAdapter({ apiKey: process.env.ANTHROPIC_API_KEY }));
  }

  // Determine provider based on flag
  let providerName = 'ollama';
  let chatModel = config.chatModel;
  let routerModel = config.chatModel;
  
  if (isClaudeMode) {
    if (!process.env.ANTHROPIC_API_KEY) {
      console.log('\n⚠️  --claude requires ANTHROPIC_API_KEY environment variable.');
      process.exit(1);
    }
    kit.setProvider('anthropic');
    providerName = 'anthropic';
    chatModel = 'claude-3-5-sonnet-latest';
    routerModel = 'claude-3-5-haiku-latest'; // Fast model for routing
  } else {
    kit.setProvider('ollama');
  }
  
  const availableTables = Object.keys(TABLE_SEARCH) as TableName[];
  let selectedTables: TableName[] = availableTables;

  // =========================================================================
  // Pass 1: Query Router (Select Tables)
  // =========================================================================
  if (!isSinglePassMode) {
    console.log(`🧭 Routing query (Pass 1 - ${providerName}/${routerModel})...`);
    
    const routerPrompt = `You are a query router for a CRM database.
Available tables: ${availableTables.join(', ')}

Given the user's question, reply with a JSON array of strings containing ONLY the names of the tables that might contain the answer. 
Example output: ["contacts", "companies"]

Question: ${question}

JSON array only:`;

    try {
      const routerResponse = (await kit.generate({
        model: routerModel,
        prompt: routerPrompt,
      })) as string;
      
      // Extract JSON array from response
      const match = routerResponse?.match(/\[.*\]/s);
      if (match) {
        const parsed = JSON.parse(match[0]);
        selectedTables = parsed.filter((t: string) => availableTables.includes(t as TableName)) as TableName[];
      }
    } catch (err) {
      console.log('⚠️ Router failed, falling back to all tables.', err);
    }

    if (!selectedTables || selectedTables.length === 0) {
      selectedTables = availableTables;
    }

    console.log(`   Selected tables: ${selectedTables.join(', ')}\n`);
  } else {
    console.log(`🧭 Single-pass mode enabled. Skipping router and searching all ${availableTables.length} tables...\n`);
  }

  // =========================================================================
  // Pass 2: Search Vector Database
  // =========================================================================
  console.log(`📚 Gathering context from selected tables...`);
  
  const context = await search(question, selectedTables);
  const topContext = context.slice(0, 5);

  if (topContext.length === 0) {
    console.log('\n⚠️  No relevant data found.');
    process.exit(0);
  }

  console.log(`   Found ${topContext.length} relevant items\n`);

  // Format context for LLM
  const contextText = topContext
    .map((item, i) => {
      let content = '';
      const d = item.data;
      if (item.table === "contacts") { content = `Contact: ${d.firstName || ''} ${d.lastName || ''}\nHeadline: ${d.headline || 'None'}\nBio: ${d.bio || 'None'}`; }
      else if (item.table === 'companies') content = `Company: ${d.name || ''}\nDesc: ${d.description || 'None'}\nIndustry: ${d.industry || 'None'}`;
      else if (item.table === 'events') content = `Event: ${d.name || ''}\nNotes: ${d.notes || 'None'}`;
      else if (item.table === 'notes') content = `Note: ${d.content || 'None'}`;
      else if (item.table === 'expenses') content = `Expense: ${d.description || 'None'} $${d.amount || '0'}`;
      else content = `${item.table}: ${item.name || d.title || 'Untitled'}\nData: ${JSON.stringify(d, null, 2)}`;
      
      return `[Source ${i + 1}] (${item.table})\n${content}`;
    })
    .join('\n\n');

  if (isContextMode) {
    console.log('─'.repeat(60));
    console.log('\n🧠 RAW CONTEXT DUMP:\n');
    console.log(contextText);
    console.log('\n' + '─'.repeat(60));
    
    console.log('\n📊 Sources used:\n');
    for (const item of topContext) {
      console.log(`   • [${item.table}] ${item.name} (${(item.score * 100).toFixed(1)}%)`);
    }
    console.log('');
    process.exit(0);
  }

  // =========================================================================
  // Pass 3: Synthesize Answer
  // =========================================================================
  const systemPrompt = `You are a helpful CRM assistant. Answer questions based on the provided context from the CRM database. Be concise and specific. If the answer isn't in the context, say so.`;
  const userPrompt = `Context from CRM database:\n\n${contextText}\n\nQuestion: ${question}\n\nAnswer based on the context above:`;

  console.log(`💬 Generating answer (${providerName}/${chatModel})...\n`);
  
  try {
    const answer = await kit.generate({
      model: chatModel,
      system: systemPrompt,
      messages: [
        { role: 'user', content: userPrompt }
      ]
    });

    console.log('─'.repeat(60));
    console.log('\n📝 Answer:\n');
    console.log(answer);
    console.log('\n' + '─'.repeat(60));
  } catch (err: any) {
    console.error('❌ Failed to generate answer:', err.message || err);
  }
  
  console.log('\n📊 Sources used:\n');
  for (const item of topContext) {
    console.log(`   • [${item.table}] ${item.name} (${(item.score * 100).toFixed(1)}%)`);
  }
  console.log('');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
