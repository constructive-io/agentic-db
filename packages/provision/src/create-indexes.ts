/**
 * create-indexes.ts — Apply comprehensive indexing strategy via Constructive SDK
 * 
 * Strategy:
 * - GIN: All `tags` columns (citext[])
 * - HNSW: All `embedding` columns (vector)
 * - BM25: Content-heavy text fields (notes, tasks, etc.)
 * - Trigram: Name/Title fields (typo tolerance, autocomplete)
 * - TSVector: Multi-field weighted search (e.g. contacts)
 * - B-Tree: Standard lookups (FKs, status, dates)
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

// --- Configuration ---

interface IndexConfig {
  gin?: string[];      // GIN on scalar/array (e.g. tags)
  bm25?: string[];     // BM25 on text
  trigram?: string[];  // GIN Trigram on text
  btree?: string[];    // Standard B-Tree
  hnsw?: string[];     // HNSW on vector
  // TSVector is special, handled separately
}

const INDEX_MAP: Record<string, IndexConfig> = {
  // CRM
  contacts: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    trigram: ['first_name', 'last_name'], // For typo-tolerant name search
    btree: ['email'] 
  },
  companies: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['description'], 
    trigram: ['name'],
    btree: ['domain'] 
  },
  events: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['notes'], 
    trigram: ['name'],
    btree: ['started_at', 'event_type'] 
  },
  venues: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['notes'], 
    trigram: ['name'],
    btree: ['city'] 
  },
  notes: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['content']
  },
  messages: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['body_text'], 
    btree: ['sent_at', 'thread_id', 'email_account_id'] 
  },
  expenses: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['description', 'merchant'], 
    btree: ['date', 'category'] 
  },
  
  // Agent
  tasks: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['description'], 
    btree: ['status', 'priority'] 
  },
  rules: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['content'], 
    btree: ['kind', 'is_active'] 
  },
  skills: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['content', 'description'], 
    trigram: ['name']
  },
  memories: { 
    gin: ['tags'], 
    hnsw: ['embedding'],
    bm25: ['content'] 
  },
  
  // Codebase
  repositories: { 
    hnsw: ['embedding'],
    bm25: ['description'], 
    trigram: ['name'] 
  },
  files: { 
    btree: ['path'] 
  },
  chunks: { 
    hnsw: ['embedding'],
    bm25: ['content']
  },
  
  // Runtime
  sessions: { 
    hnsw: ['embedding'],
    bm25: ['context_summary'], 
    btree: ['status', 'started_at'] 
  },
  blueprints: { 
    hnsw: ['embedding'],
    bm25: ['trigger_conditions'], 
    trigram: ['title'] 
  },
  chat_messages: { 
    hnsw: ['embedding'],
    bm25: ['content'], 
    btree: ['role'] 
  }
};

async function main() {
  console.log('\n🔍 Applying Comprehensive Indexes (SDK)...\n');
  console.log(`   Database: ${process.env.DATABASE_NAME}`);
  console.log(`   ID: ${databaseId}`);

  // 1. Fetch Tables
  const tables = await fetchTables();
  console.log(`   Found ${tables.size} tables.`);

  // 2. Iterate Config
  for (const [tableName, config] of Object.entries(INDEX_MAP)) {
    const tableId = tables.get(tableName);
    if (!tableId) {
      console.log(`   ⚠️ Table '${tableName}' not found (skipping)`);
      continue;
    }
    
    console.log(`\n   ${tableName}...`);
    
    // Fetch Fields
    const fields = await fetchFields(tableId);
    
    // Apply Indexes
    await applyIndexes(tableId, tableName, config, fields);
  }

  // 3. Special Case: TSVector for Contacts (Weighted Multi-Field)
  const contactsId = tables.get('contacts');
  if (contactsId) {
    console.log('\n   contacts (TSVector setup)...');
    await setupContactsTsVector(contactsId);
  }

  console.log('\n✅ Indexing Complete!');
}

// --- Helpers ---

async function fetchTables() {
  const result = await client.secureTableProvision.findMany({
    where: { databaseId: { equalTo: databaseId } },
    select: { tableId: true, tableName: true }
  }).execute();
  
  if (!result.ok) throw new Error('Failed to list tables: ' + result.error.message);
  
  const map = new Map<string, string>();
  result.data.secureTableProvisions.nodes.forEach(t => {
    if (t.tableName && t.tableId) map.set(t.tableName, t.tableId);
  });
  return map;
}

async function fetchFields(tableId: string) {
  const result = await client.field.findMany({
    where: { tableId: { equalTo: tableId } },
    select: { id: true, name: true }
  }).execute();
  
  if (!result.ok) throw new Error('Failed to list fields: ' + result.error.message);
  
  const map = new Map<string, string>();
  result.data.fields.nodes.forEach(f => {
    map.set(f.name, f.id);
  });
  return map;
}

async function createIndex(tableId: string, name: string, fieldIds: string[], method: string, opts: any = {}) {
  process.stdout.write(`      + ${name} (${method})... `);
  try {
    const result = await withRetry(() => client.index.create({
      data: {
        databaseId: databaseId!,
        tableId,
        name,
        fieldIds,
        accessMethod: method,
        ...opts
      },
      select: { id: true }
    }).unwrap());
    console.log('✅');
  } catch (e: any) {
    if (e.message?.includes('duplicate') || e.message?.includes('exists')) {
      console.log('✅ (exists)');
    } else {
      console.log(`❌ ${e.message}`);
    }
  }
}

async function applyIndexes(tableId: string, tableName: string, config: IndexConfig, fields: Map<string, string>) {
  // GIN (Tags)
  for (const col of config.gin || []) {
    const fid = fields.get(col);
    if (!fid) { console.log(`      ⚠️ Field '${col}' missing`); continue; }
    await createIndex(tableId, `idx_${tableName}_${col}_gin`, [fid], 'gin');
  }

  // HNSW (Vectors)
  for (const col of config.hnsw || []) {
    const fid = fields.get(col);
    if (!fid) { console.log(`      ⚠️ Field '${col}' missing`); continue; }
    // HNSW needs opclass for vectors
    await createIndex(tableId, `idx_${tableName}_${col}_hnsw`, [fid], 'hnsw', {
      opClasses: ['vector_cosine_ops'],
      indexParams: { m: 16, ef_construction: 64 }
    });
  }

  // BM25 (Text)
  for (const col of config.bm25 || []) {
    const fid = fields.get(col);
    if (!fid) { console.log(`      ⚠️ Field '${col}' missing`); continue; }
    await createIndex(tableId, `idx_${tableName}_${col}_bm25`, [fid], 'bm25', {
      indexParams: JSON.stringify({ text_config: 'english' })
    });
  }

  // Trigram (Fuzzy)
  for (const col of config.trigram || []) {
    const fid = fields.get(col);
    if (!fid) { console.log(`      ⚠️ Field '${col}' missing`); continue; }
    await createIndex(tableId, `idx_${tableName}_${col}_trgm`, [fid], 'gin', {
      opClasses: ['gin_trgm_ops']
    });
  }

  // B-Tree (Standard)
  for (const col of config.btree || []) {
    const fid = fields.get(col);
    if (!fid) { console.log(`      ⚠️ Field '${col}' missing`); continue; }
    await createIndex(tableId, `idx_${tableName}_${col}`, [fid], 'btree');
  }
}

async function setupContactsTsVector(tableId: string) {
  const fields = await fetchFields(tableId);
  
  // 1. Create tsvector column if missing
  if (!fields.has('search_tsv')) {
    process.stdout.write(`      + search_tsv column... `);
    const fRes = await withRetry(() => client.field.create({
      data: { databaseId: databaseId!, tableId, name: 'search_tsv', type: 'tsvector' },
      select: { id: true }
    }).unwrap());
    fields.set('search_tsv', fRes.createField?.field?.id!);
    console.log('✅');
  }

  // 2. Create GIN index on it
  const tsvId = fields.get('search_tsv')!;
  await createIndex(tableId, 'idx_contacts_search_tsv_gin', [tsvId], 'gin');

  // 3. Configure triggers (Weighted Search)
  // A: Name, B: Headline, C: Bio
  const sourceFields: string[] = [];
  const weights: string[] = [];
  const langs: string[] = [];

  const addSource = (col: string, weight: string) => {
    const fid = fields.get(col);
    if (fid) {
      sourceFields.push(fid);
      weights.push(weight);
      langs.push('english');
    }
  };

  addSource('first_name', 'A');
  addSource('last_name', 'A');
  addSource('headline', 'B');
  addSource('bio', 'C');

  process.stdout.write(`      + FullTextSearch config... `);
  // Check if exists
  const existing = await client.fullTextSearch.findMany({
    where: { fieldId: { equalTo: tsvId } },
    select: { id: true }
  }).execute();

  if (existing.ok && existing.data.fullTextSearches.nodes.length > 0) {
    console.log('✅ (exists)');
  } else {
    await withRetry(() => client.fullTextSearch.create({
      data: {
        tableId,
        fieldId: tsvId,
        fieldIds: sourceFields,
        weights,
        langs
      },
      select: { id: true }
    }).unwrap());
    console.log('✅');
  }
}

main().catch((err) => {
  console.error('\n❌ Error:', err.message ?? err);
  process.exit(1);
});
