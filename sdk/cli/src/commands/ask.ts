/**
 * CLI command: agent-db ask "<question>" [--tables contacts,notes,...]
 *
 * RAG pipeline: vector search for context, then LLM generates an answer.
 */
import { CLIOptions, Inquirerer } from 'inquirerer';
import { searchAll } from './search';
import { createChatProvider } from '../embeddings';
import { getRagConfig } from '../rag-config';

const usage = `
ask <question> [options]

  Ask a question and get an AI-generated answer using RAG.
  Searches for relevant context, then sends it to an LLM.

Options:
  --tables <list>    Comma-separated tables to search (default: all)
  --limit <n>        Context items per table (default: 3)
  --top <n>          Top results to use as context (default: 5)
  --json             Output raw JSON (context + answer)

Examples:
  agent-db ask "when did I last meet Dan?"
  agent-db ask "what are my upcoming deadlines?" --tables tasks,projects
  agent-db ask "summarize my expenses this month" --top 10
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

  // Get question from positional args or prompt
  let question = argv._
    ? (argv._ as string[]).filter((a) => typeof a === 'string' && a !== 'ask').join(' ')
    : '';

  if (!question) {
    const answers = await prompter.prompt(argv, [
      { type: 'text', name: 'question', message: 'Question:', required: true },
    ]);
    question = answers.question as string;
  }

  const config = getRagConfig();
  const tables = argv.tables
    ? (argv.tables as string).split(',').map((t) => t.trim() as Parameters<typeof searchAll>[2] extends (infer T)[] | undefined ? T : never)
    : undefined;
  const limit = argv.limit ? parseInt(String(argv.limit), 10) : 3;
  const top = argv.top ? parseInt(String(argv.top), 10) : 5;

  console.log(`\nQuestion: "${question}"\n`);
  console.log('Gathering context...');

  const results = await searchAll(question, config, tables, limit);
  const topResults = results.slice(0, top);

  if (topResults.length === 0) {
    console.log('No relevant data found in the database.');
    return;
  }

  console.log(`  Found ${topResults.length} relevant items\n`);

  // Format context for LLM
  const contextText = topResults
    .map((item, i) => {
      const d = item.data;
      let content = '';
      switch (item.table) {
        case 'contacts':
          content = `Contact: ${d.firstName || ''} ${d.lastName || ''}\nHeadline: ${d.headline || ''}\nBio: ${d.bio || ''}`;
          break;
        case 'companies':
          content = `Company: ${d.name}\nDescription: ${d.description || ''}`;
          break;
        case 'events':
          content = `Event: ${d.name}\nNotes: ${d.notes || ''}`;
          break;
        case 'notes':
          content = `Note: ${d.content || ''}`;
          break;
        case 'tasks':
          content = `Task: ${d.title || ''}`;
          break;
        case 'memories':
          content = `Memory: ${d.content || ''}`;
          break;
        case 'projects':
          content = `Project: ${d.name}\nDescription: ${d.description || ''}`;
          break;
        case 'deals':
          content = `Deal: ${d.name || ''}`;
          break;
        case 'chats':
          content = `Chat: ${d.title || ''}`;
          break;
        default:
          content = `${item.table}: ${item.name}`;
      }
      return `[${i + 1}] ${content}`;
    })
    .join('\n\n');

  const systemPrompt =
    'You are a helpful personal assistant with access to a database containing contacts, events, tasks, notes, projects, and more. Answer questions based on the provided context. Be concise and specific. If the answer is not in the context, say so.';

  const userPrompt = `Context from database:\n\n${contextText}\n\nQuestion: ${question}\n\nAnswer based on the context above:`;

  console.log('Generating answer...\n');

  const chatProvider = createChatProvider(config);
  const answer = await chatProvider.chat([
    { role: 'system', content: systemPrompt },
    { role: 'user', content: userPrompt },
  ]);

  if (argv.json) {
    console.log(
      JSON.stringify(
        {
          question,
          answer,
          sources: topResults.map((r) => ({
            table: r.table,
            name: r.name,
            score: r.score,
          })),
        },
        null,
        2
      )
    );
    return;
  }

  console.log('-'.repeat(60));
  console.log(`\n${answer}\n`);
  console.log('-'.repeat(60));

  console.log('\nSources:\n');
  for (const item of topResults) {
    console.log(`  [${item.table}] ${item.name} (${(item.score * 100).toFixed(1)}%)`);
  }
  console.log('');
};
