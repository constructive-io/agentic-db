import { config } from './config';
import { authenticate, createAuthenticatedClient } from './client';
import { embed } from './ollama';

const TEST_EMAIL = 'rag-test@example.com';
const TEST_PASSWORD = 'RagTest123!';

type TableName = 'contacts' | 'companies' | 'deals' | 'events' | 'venues' | 'notes' | 'expenses' | 'tasks' | 'memories' | 'skills' | 'rules';

interface TableConfig {
  modelName: string; // SDK model property name (e.g. 'contact')
  textFields: string[];
}

// Map table name to SDK model name (camelCase singular usually)
const TABLE_CONFIGS: Record<string, TableConfig> = {
  contacts: { modelName: 'contact', textFields: ['firstName', 'lastName', 'headline', 'bio', 'tags'] },
  companies: { modelName: 'company', textFields: ['name', 'description', 'industry', 'tags'] },
  deals: { modelName: 'deal', textFields: ['name', 'notes', 'tags'] },
  events: { modelName: 'event', textFields: ['name', 'eventType', 'notes', 'tags'] },
  venues: { modelName: 'venue', textFields: ['name', 'neighborhood', 'city', 'notes', 'tags'] },
  notes: { modelName: 'note', textFields: ['content', 'tags'] },
  expenses: { modelName: 'expense', textFields: ['description', 'category', 'merchant', 'tags'] },
  tasks: { modelName: 'task', textFields: ['title', 'description', 'status', 'tags'] },
  memories: { modelName: 'memory', textFields: ['content', 'tags'] },
  skills: { modelName: 'skill', textFields: ['name', 'description', 'content', 'tags'] },
  rules: { modelName: 'rule', textFields: ['title', 'content', 'kind', 'tags'] },
};

async function main() {
  const table = (process.argv[2] as string) || 'all';
  const tables = table === 'all' ? Object.keys(TABLE_CONFIGS) : [table];

  console.log(`\n🔧 Embedding ${table === 'all' ? 'all tables' : table}\n`);

  const { token, userId } = await authenticate(TEST_EMAIL, TEST_PASSWORD);
  console.log(`   Authenticated as: ${userId}`);
  
  const client = createAuthenticatedClient(token);

  for (const tableName of tables) {
    const cfg = TABLE_CONFIGS[tableName];
    if (!cfg) continue;

    console.log(`\n📋 Processing ${tableName} (${cfg.modelName})...`);

    // Dynamic model access
    const model = (client as any)[cfg.modelName];
    if (!model) {
      console.log(`   ❌ Model '${cfg.modelName}' not found on SDK client`);
      continue;
    }

    // Build select object
    const select: any = { id: true, embedding: true };
    cfg.textFields.forEach(f => select[f] = true);

    const result = await model.findMany({ select }).execute();
    
    if (!result.ok) {
      console.log(`   ❌ Failed to fetch: ${JSON.stringify(result.errors)}`);
      continue;
    }

    const dataKey = Object.keys(result.data || {})[0];
    const records = (result.data as any)[dataKey]?.nodes || [];
    
    const needsEmbedding = records.filter((n: any) => !n.embedding);
    
    console.log(`   Found ${records.length} records, ${needsEmbedding.length} need embedding`);

    for (const record of needsEmbedding) {
      // Build text
      const textParts = cfg.textFields
        .map(field => {
            const val = record[field];
            if (Array.isArray(val)) return val.join(', ');
            return val;
        })
        .filter(Boolean);
      const text = textParts.join('. ');
      
      if (!text.trim()) continue;

      console.log(`   🔄 ${record.id.slice(0, 8)}...`);

      let embedding;
      try {
        embedding = await embed(text);
      } catch (e: any) {
        console.log(`      ❌ Embed error: ${e.message}`);
        continue;
      }

      // Update via SDK
      const patchKey = cfg.modelName + 'Patch';
      // SDK update(input) pattern
      const updateRes = await model.update({
        input: {
          id: record.id,
          [patchKey]: { embedding }
        }
      }).execute();

      if (!updateRes.ok) {
        console.log(`      ❌ Update failed: ${JSON.stringify(updateRes.errors)}`);
      } else {
        process.stdout.write('.');
      }
    }
  }
  console.log('\n✅ Embedding complete!\n');
}

main().catch((err) => {
  console.error('❌', err);
  process.exit(1);
});
