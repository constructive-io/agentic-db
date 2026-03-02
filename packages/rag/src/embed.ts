/**
 * Embed a single record by ID
 */
import { config } from './config';
import { authenticate, createAuthenticatedClient, createRawAdapter } from './client';
import { embed } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

type TableName = 'contact' | 'company' | 'deal' | 'event' | 'venue' | 'note';

const TABLE_TEXT_FIELDS: Record<TableName, string[]> = {
  contact: ['firstName', 'lastName', 'headline', 'bio'],
  company: ['name', 'description', 'industry'],
  deal: ['name', 'notes'],
  event: ['name', 'eventType', 'notes'],
  venue: ['name', 'neighborhood', 'city', 'notes'],
  note: ['content'],
};

async function main() {
  const table = process.argv[2] as TableName;
  const id = process.argv[3];
  
  if (!table || !id) {
    console.log('\nUsage: pnpm --filter @agentic-sdk/rag run embed <table> <id>\n');
    console.log('Tables: contact, company, deal, event, venue, note');
    console.log('\nExample:');
    console.log('  pnpm --filter @agentic-sdk/rag run embed contact abc123-...\n');
    process.exit(0);
  }

  console.log(`\n🔧 Embedding ${table} ${id}\n`);

  // Authenticate
  const { token } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  const adapter = createRawAdapter(token);
  const client = createAuthenticatedClient(token);

  // Fetch the record (using raw query for now as FindOne by ID dynamic logic is verbose in typed SDK without helper)
  const tablePlural = table + 's';
  const query = `{ ${tablePlural}(filter: { id: { equalTo: "${id}" } }) { nodes { id ${TABLE_TEXT_FIELDS[table].join(' ')} } } }`;
  
  const result = await adapter.execute(query);
  
  if (!result.ok) {
    console.error('❌ Failed to fetch record:', result.errors);
    process.exit(1);
  }

  const nodes = (result.data as any)[tablePlural]?.nodes || [];
  if (nodes.length === 0) {
    console.error(`❌ No ${table} found with id ${id}`);
    process.exit(1);
  }

  const record = nodes[0];
  
  // Build text from fields
  const textParts = TABLE_TEXT_FIELDS[table]
    .map(field => record[field])
    .filter(Boolean);
  const text = textParts.join('. ');
  
  console.log(`   Text: "${text.slice(0, 100)}..."`);

  // Generate embedding
  console.log('   Generating embedding...');
  const embedding = await embed(text);
  console.log(`   Dimension: ${embedding.length}`);

  // Update the record using SDK
  const model = (client as any)[table];
  if (!model) throw new Error(`Model ${table} not found on client`);

  const patchKey = `${table}Patch`;
  
  // Using .update({ id, contactPatch: ... })
  const updateResult = await model.update({
    id,
    [patchKey]: { embedding: embedding as any },
    select: { id: true }
  }).execute();

  if (!updateResult.ok) {
    console.error('❌ Failed to update:', updateResult.errors);
    process.exit(1);
  }

  console.log(`\n✅ Embedded ${table} ${id}\n`);
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
