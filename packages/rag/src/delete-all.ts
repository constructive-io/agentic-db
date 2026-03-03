import { authenticate, createAuthenticatedClient, createRawAdapter } from './client';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

async function main() {
  console.log('🧹 Cleaning Agent-OS Data (Robust Loop)...');
  const { token } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  const adapter = createRawAdapter(token);

  const tables = [
    // Dependents first
    'chunks', 'files', 'repositories',
    'notes', 'messages', 'emailAccounts',
    'expenses', 'rules', 'skills', 'memories',
    'venues', 'events', 'companies', 'tasks', 'contacts'
  ];
  
  // Mapping plural -> singular for delete mutation (e.g. contacts -> deleteContact)
  const singularMap: Record<string, string> = {
    chunks: 'Chunk', files: 'File', repositories: 'Repository',
    notes: 'Note', messages: 'Message', emailAccounts: 'EmailAccount',
    expenses: 'Expense', rules: 'Rule', skills: 'Skill', memories: 'Memory',
    venues: 'Venue', events: 'Event', companies: 'Company', tasks: 'Task', contacts: 'Contact'
  };

  for (const table of tables) {
    const singular = singularMap[table];
    console.log(`   Deleting ${table}...`);
    let total = 0;
    while (true) {
      // Query
      const query = `{ ${table}(first: 50) { nodes { id } } }`;
      const res = await adapter.execute(query);
      const items = (res.data as any)?.[table]?.nodes || [];
      
      if (items.length === 0) break;
      
      // Delete
      await Promise.all(items.map((item: any) => 
        adapter.execute(`mutation { delete${singular}(input: { id: "${item.id}" }) { clientMutationId } }`)
      ));
      total += items.length;
      process.stdout.write(` ${total}`);
    }
    console.log(`\n   All ${table} deleted.`);
  }
}

main().catch(console.error);
