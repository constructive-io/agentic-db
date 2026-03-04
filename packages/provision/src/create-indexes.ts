/**
 * create-indexes.ts — Apply comprehensive indexing strategy
 * GIN (tags), BM25 (text), B-Tree (lookups)
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../.env') });

import { createClient } from './sdk/platform/orm/index';
import { NodeHttpAdapter } from './sdk/node-http-adapter';
import { withRetry } from './helpers';

const databaseId = process.env.DATABASE_ID;
const accessToken = process.env.ACCESS_TOKEN;

if (!databaseId || !accessToken) {
  console.error('❌ Missing DATABASE_ID or ACCESS_TOKEN in .env');
  process.exit(1);
}

const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
  Authorization: `Bearer ${accessToken}`,
});
const client = createClient({ adapter });

// Index Configuration
const INDEX_CONFIG: Record<string, { gin?: string[], bm25?: string[], btree?: string[] }> = {
  // CRM
  contacts: { gin: ['tags'], bm25: [], btree: ['email'] },
  companies: { gin: ['tags'], bm25: ['description'], btree: ['domain'] },
  deals: { gin: ['tags'], bm25: ['notes'], btree: ['stage'] },
  events: { gin: ['tags'], bm25: ['notes'], btree: ['started_at', 'event_type'] },
  venues: { gin: ['tags'], bm25: ['notes'], btree: ['city'] },
  notes: { gin: ['tags'], bm25: ['content'], btree: [] },
  messages: { gin: ['tags'], bm25: ['body_text'], btree: ['sent_at', 'thread_id', 'email_account_id'] },
  expenses: { gin: ['tags'], bm25: ['description', 'merchant'], btree: ['date', 'category'] },

  // Agent
  tasks: { gin: ['tags'], bm25: ['description'], btree: ['status', 'priority'] },
  rules: { gin: ['tags'], bm25: ['content'], btree: ['kind', 'is_active'] },
  skills: { gin: ['tags'], bm25: ['content', 'description'], btree: ['name'] },
  memories: { gin: ['tags'], bm25: ['content'], btree: [] },

  // Codebase
  repositories: { gin: [], bm25: ['description'], btree: ['name'] },
  files: { gin: [], bm25: [], btree: ['path'] },
  chunks: { gin: [], bm25: ['content'], btree: [] },

  // Runtime
  sessions: { gin: [], bm25: ['context_summary'], btree: ['status', 'started_at'] },
  blueprints: { gin: [], bm25: ['trigger_conditions'], btree: ['title'] },
  chat_messages: { gin: [], bm25: ['content'], btree: ['role'] }
};

async function main() {
  console.log('\n🔍 Applying Indexes (GIN, BM25, B-Tree)...\n');
  console.log(`   Database ID: ${databaseId}`);

  // 1. Fetch tables
  let tables: any[] = [];
  try {
    const result = await client.secureTableProvision.findMany({
      where: { databaseId: { equalTo: databaseId } },
      select: {
        tableId: true,
        tableName: true
      }
    }).execute();
    
    if (result.ok) {
       tables = result.data.secureTableProvisions.nodes;
    } else {
       console.error('Failed to list tables:', JSON.stringify(result.errors, null, 2));
       return;
    }
  } catch (e) {
    console.error('Error fetching tables:', e);
    return;
  }

  const tableMap = new Map<string, string>();
  for (const t of tables) {
    if (t.tableName && t.tableId) {
      tableMap.set(t.tableName, t.tableId);
    }
  }

  // 2. Iterate Config
  for (const [tableName, config] of Object.entries(INDEX_CONFIG)) {
    const tableId = tableMap.get(tableName);
    if (!tableId) {
      console.log(`   ⚠️ Table '${tableName}' not found (skipping)`);
      continue;
    }
    
    console.log(`\n   ${tableName} (${tableId}):`);
    
    // Fetch fields
    const fieldsResult = await client.field.findMany({
      where: { tableId: { equalTo: tableId } },
      select: { id: true, name: true }
    }).execute();
    
    if (!fieldsResult.ok) {
      console.error(`      ❌ Failed to fetch fields for ${tableName}`);
      continue;
    }
    
    const fieldMap = new Map<string, string>();
    for (const f of fieldsResult.data.fields.nodes) {
      fieldMap.set(f.name, f.id);
    }

    // Apply GIN
    for (const col of config.gin || []) {
      const fieldId = fieldMap.get(col);
      if (!fieldId) { console.log(`      ⚠️ Field '${col}' not found`); continue; }
      
      const indexName = `idx_${tableName}_${col}_gin`;
      await createIndex(tableId, indexName, [fieldId], 'gin');
    }

    // Apply BM25
    for (const col of config.bm25 || []) {
      const fieldId = fieldMap.get(col);
      if (!fieldId) { console.log(`      ⚠️ Field '${col}' not found`); continue; }
      
      const indexName = `idx_${tableName}_${col}_bm25`;
      await createIndex(tableId, indexName, [fieldId], 'bm25', { text_search_config: 'english' });
    }

    // Apply B-Tree
    for (const col of config.btree || []) {
      const fieldId = fieldMap.get(col);
      if (!fieldId) { console.log(`      ⚠️ Field '${col}' not found`); continue; }
      
      const indexName = `idx_${tableName}_${col}`;
      await createIndex(tableId, indexName, [fieldId], 'btree');
    }
  }
}

async function createIndex(tableId: string, name: string, fieldIds: string[], method: string, params?: any) {
  process.stdout.write(`      Creating ${name} (${method})... `);
  try {
    const result = await withRetry(() => client.index.create({
      data: {
        databaseId: databaseId!,
        tableId,
        name,
        fieldIds,
        accessMethod: method,
        indexParams: params
      },
      select: { id: true }
    }).unwrap());
    console.log('✅');
  } catch (e: any) {
    if (e.message?.includes('duplicate key') || e.message?.includes('already exists')) {
       console.log('✅ (exists)');
    } else {
       console.log(`❌ ${e.message}`);
    }
  }
}

main().catch((err) => {
  console.error('\n❌', err.message ?? err);
  process.exit(1);
});
