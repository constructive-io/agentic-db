/**
 * Embed all records in a table that don't have embeddings
 */
import { config } from './config';
import { authenticate, createRawAdapter } from './client';
import { embed, vectorToString } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

type TableName = 'contacts' | 'companies' | 'deals' | 'events' | 'venues' | 'notes';

interface TableConfig {
  singular: string;
  textFields: string[];
  patchType: string;
}

const TABLE_CONFIGS: Record<TableName, TableConfig> = {
  contacts: { singular: 'Contact', textFields: ['firstName', 'lastName', 'headline', 'bio'], patchType: 'ContactPatch' },
  companies: { singular: 'Company', textFields: ['name', 'description', 'industry'], patchType: 'CompanyPatch' },
  deals: { singular: 'Deal', textFields: ['name', 'notes'], patchType: 'DealPatch' },
  events: { singular: 'Event', textFields: ['name', 'eventType', 'notes'], patchType: 'EventPatch' },
  venues: { singular: 'Venue', textFields: ['name', 'neighborhood', 'city', 'notes'], patchType: 'VenuePatch' },
  notes: { singular: 'Note', textFields: ['content'], patchType: 'NotePatch' },
};

async function main() {
  const table = (process.argv[2] as TableName) || 'all';
  
  const tables: TableName[] = table === 'all' 
    ? Object.keys(TABLE_CONFIGS) as TableName[]
    : [table];

  console.log(`\n🔧 Embedding ${table === 'all' ? 'all tables' : table}\n`);

  // Authenticate
  const { token } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  const adapter = createRawAdapter(token);

  for (const tableName of tables) {
    const cfg = TABLE_CONFIGS[tableName];
    if (!cfg) {
      console.log(`⚠️  Unknown table: ${tableName}`);
      continue;
    }

    console.log(`\n📋 Processing ${tableName}...`);

    // Fetch records without embeddings
    const fields = ['id', ...cfg.textFields, 'embedding'].join(' ');
    const query = `{ ${tableName} { nodes { ${fields} } } }`;
    
    const result = await adapter.execute(query);
    if (!result.ok) {
      console.log(`   ❌ Failed to fetch: ${result.errors?.[0]?.message}`);
      continue;
    }

    const nodes = (result.data as any)[tableName]?.nodes || [];
    const needsEmbedding = nodes.filter((n: any) => !n.embedding);
    
    console.log(`   Found ${nodes.length} records, ${needsEmbedding.length} need embedding`);

    for (const record of needsEmbedding) {
      // Build text
      const textParts = cfg.textFields
        .map(field => record[field])
        .filter(Boolean);
      const text = textParts.join('. ');
      
      if (!text.trim()) {
        console.log(`   ⏭️  Skipping ${record.id} (no text)`);
        continue;
      }

      console.log(`   🔄 ${record.id.slice(0, 8)}... "${text.slice(0, 40)}..."`);

      // Generate embedding
      const embedding = await embed(text);

      // Update
      const mutation = `
        mutation Update($id: UUID!, $patch: ${cfg.patchType}!) {
          update${cfg.singular}(input: { id: $id, ${cfg.singular.toLowerCase()}Patch: $patch }) {
            ${cfg.singular.toLowerCase()} { id }
          }
        }
      `;

      const updateResult = await adapter.execute(mutation, {
        id: record.id,
        patch: { embedding: vectorToString(embedding) },
      });

      if (!updateResult.ok) {
        console.log(`      ❌ ${updateResult.errors?.[0]?.message}`);
      } else {
        console.log(`      ✅ Done`);
      }
    }
  }

  console.log('\n✅ Embedding complete!\n');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
