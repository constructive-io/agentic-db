/**
 * Embed all records in a table that don't have embeddings
 */
import { config } from './config';
import { authenticate, createRawAdapter } from './client';
import { embed, vectorToString } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

type TableName = 'contacts' | 'companies' | 'deals' | 'events' | 'venues' | 'notes' | 'expenses' | 'tasks' | 'memories' | 'skills' | 'rules';

interface TableConfig {
  singular: string;
  textFields: string[];
  patchType: string;
}

const TABLE_CONFIGS: Record<string, TableConfig> = {
  contacts: { singular: 'Contact', textFields: ['firstName', 'lastName', 'headline', 'bio', 'tags'], patchType: 'ContactPatch' },
  companies: { singular: 'Company', textFields: ['name', 'description', 'industry', 'tags'], patchType: 'CompanyPatch' },
  deals: { singular: 'Deal', textFields: ['name', 'notes', 'tags'], patchType: 'DealPatch' },
  events: { singular: 'Event', textFields: ['name', 'eventType', 'notes', 'tags'], patchType: 'EventPatch' },
  venues: { singular: 'Venue', textFields: ['name', 'neighborhood', 'city', 'notes', 'tags'], patchType: 'VenuePatch' },
  notes: { singular: 'Note', textFields: ['content', 'tags'], patchType: 'NotePatch' },
  expenses: { singular: 'Expense', textFields: ['description', 'category', 'merchant', 'tags'], patchType: 'ExpensePatch' },
  tasks: { singular: 'Task', textFields: ['title', 'description', 'status', 'tags'], patchType: 'TaskPatch' },
  memories: { singular: 'Memory', textFields: ['content', 'tags'], patchType: 'MemoryPatch' },
  skills: { singular: 'Skill', textFields: ['name', 'description', 'content', 'tags'], patchType: 'SkillPatch' },
  rules: { singular: 'Rule', textFields: ['title', 'content', 'kind', 'tags'], patchType: 'RulePatch' },
};

async function main() {
  const table = (process.argv[2] as string) || 'all';
  
  const tables = table === 'all' 
    ? Object.keys(TABLE_CONFIGS)
    : [table];

  console.log(`\n🔧 Embedding ${table === 'all' ? 'all tables' : table}\n`);

  // Authenticate
  const { token, userId } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  console.log(`   Authenticated as: ${userId}`);
  const adapter = createRawAdapter(token);

  for (const tableName of tables) {
    const cfg = TABLE_CONFIGS[tableName];
    if (!cfg) {
      console.log(`⚠️  Unknown table: ${tableName}`);
      continue;
    }

    console.log(`\n📋 Processing ${tableName}...`);

    // Fetch records without embeddings
    // Note: We use raw query because SDK models don't expose 'embedding' field easily in all versions?
    // Actually SDK has it. But dynamic query is easier here.
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
        .map(field => {
            const val = record[field];
            if (Array.isArray(val)) return val.join(', '); // Handle tags array
            return val;
        })
        .filter(Boolean);
      const text = textParts.join('. ');
      
      if (!text.trim()) {
        console.log(`   ⏭️  Skipping ${record.id} (no text)`);
        continue;
      }

      console.log(`   🔄 ${record.id.slice(0, 8)}... "${text.slice(0, 40)}..."`);

      // Generate embedding
      let embedding;
      try {
        embedding = await embed(text);
      } catch (e: any) {
        console.log(`      ❌ Embed error: ${e.message || e}`);
        continue;
      }

      // Update (using raw mutation for now to support dynamic table)
      const mutation = `
        mutation Update($id: UUID!, $patch: ${cfg.patchType}!) {
          update${cfg.singular}(input: { id: $id, ${cfg.singular.toLowerCase()}Patch: $patch }) {
            ${cfg.singular.toLowerCase()} { id }
          }
        }
      `;

      const updateResult = await adapter.execute(mutation, {
        id: record.id,
        patch: { embedding }, // Pass as array directly
      });

      if (!updateResult.ok) {
        console.log(`      ❌ ${updateResult.errors?.[0]?.message}`);
      } else {
        process.stdout.write('.');
      }
    }
  }

  console.log('\n✅ Embedding complete!\n');
}

main().catch((err) => {
  console.error('❌', err.message ?? err);
  process.exit(1);
});
