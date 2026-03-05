import { search } from './search';
import { chat, ChatMessage } from './ollama';

async function main() {
  const question = process.argv.slice(2).join(' ');
  
  if (!question) {
    console.log('\nUsage: pnpm --filter @agentic-sdk/rag run ask "<question>"\n');
    process.exit(0);
  }

  console.log(`\n❓ Question: "${question}"\n`);

  // Gather relevant context using SDK-based search
  console.log('📚 Gathering context...');
  // Search all tables
  const context = await search(question);
  
  // Take top 5
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
      if (item.table === 'contacts') content = `Contact: ${d.firstName} ${d.lastName}\nHeadline: ${d.headline}\nBio: ${d.bio}`;
      else if (item.table === 'companies') content = `Company: ${d.name}\nDesc: ${d.description}\nIndustry: ${d.industry}`;
      else if (item.table === 'events') content = `Event: ${d.name}\nNotes: ${d.notes}`;
      else if (item.table === 'notes') content = `Note: ${d.content}`;
      else if (item.table === 'expenses') content = `Expense: ${d.description} $${d.amount}`;
      else content = `${item.table}: ${item.name}`;
      
      return `[${i + 1}] ${content}`;
    })
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
  for (const item of topContext) {
    console.log(`   • [${item.table}] ${item.name} (${(item.score * 100).toFixed(1)}%)`);
  }
  console.log('');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
