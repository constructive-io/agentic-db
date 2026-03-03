/**
 * life_os.ts — Provision Life OS schemas (Communications, Finance, Knowledge)
 * Security: Safegres AuthzEntityMembership (Org-scoped)
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../../.env') });

import { createClient } from '../sdk/platform/orm/index';
import { NodeHttpAdapter } from '../sdk/node-http-adapter';
import { withRetry, entityGrants, entityPolicyData } from '../helpers';

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

async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision.create({
      data: {
        databaseId,
        tableName,
        nodeType: 'DataEntityMembership', 
        useRls: true,
        grantRoles: ['authenticated'],
        grantPrivileges: entityGrants,
        policyType: 'AuthzEntityMembership',
        policyPermissive: true,
        policyData: entityPolicyData,
      },
      select: { id: true, tableId: true },
    }).unwrap()
  );
  const tableId = result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() => client.secureTableProvision.create({ data: { databaseId, tableId, nodeType: 'DataTimestamps', nodeData: { include_id: false } as any }, select: { id: true } }).unwrap());
  console.log(`   ✓ ${tableName}`);
  return tableId;
}

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<string> {
  const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

async function addBm25Index(tableId: string, name: string, fieldIds: string[]) {
  await withRetry(() => client.index.create({
    data: {
      databaseId,
      tableId,
      name,
      accessMethod: 'bm25',
      fieldIds,
      indexParams: { text_config: 'english' }, 
    },
    select: { id: true }
  }).unwrap());
  console.log(`      🔍 Index: ${name}`);
}

async function main() {
  console.log('\n🧬 Provisioning Life OS Schema with Embeddings & BM25\n');

  // --- Communications ---
  console.log('📧 email_accounts...');
  const emailAcctId = await createOrgTable('email_accounts');
  await addField(emailAcctId, 'email', 'text', { isRequired: true });
  await addField(emailAcctId, 'provider', 'text');
  await addField(emailAcctId, 'sync_state', 'jsonb');

  console.log('📨 messages...');
  const msgsId = await createOrgTable('messages');
  await addField(msgsId, 'thread_id', 'text');
  await addField(msgsId, 'remote_id', 'text');
  const m_from = await addField(msgsId, 'from', 'text');
  const m_to = await addField(msgsId, 'to', 'text[]');
  const m_subj = await addField(msgsId, 'subject', 'text');
  const m_body = await addField(msgsId, 'body_text', 'text');
  await addField(msgsId, 'received_at', 'timestamptz');
  await addField(msgsId, 'embedding', 'vector(768)');

  // await addBm25Index(msgsId, 'messages_bm25_idx', [m_subj, m_body, m_from]);

  console.log('📅 calendar_sync...');
  const calSyncId = await createOrgTable('calendar_sync');
  await addField(calSyncId, 'provider', 'text');
  await addField(calSyncId, 'sync_token', 'text');
  await addField(calSyncId, 'last_synced_at', 'timestamptz');

  // --- Finance ---
  console.log('💸 expenses...');
  const expensesId = await createOrgTable('expenses');
  await addField(expensesId, 'amount', 'numeric');
  await addField(expensesId, 'currency', 'text', { defaultValue: "'USD'" });
  await addField(expensesId, 'date', 'date');
  const ex_cat = await addField(expensesId, 'category', 'text');
  const ex_desc = await addField(expensesId, 'description', 'text');
  const ex_merch = await addField(expensesId, 'merchant', 'text');
  await addField(expensesId, 'receipt_url', 'text');
  await addField(expensesId, 'embedding', 'vector(768)');

  // await addBm25Index(expensesId, 'expenses_bm25_idx', [ex_desc, ex_merch, ex_cat]);

  // --- Knowledge ---
  console.log('📚 documents...');
  const docsId = await createOrgTable('documents');
  const doc_title = await addField(docsId, 'title', 'text');
  await addField(docsId, 'url', 'text');
  const doc_content = await addField(docsId, 'content', 'text');
  await addField(docsId, 'source_type', 'text');
  await addField(docsId, 'embedding', 'vector(768)');

  // await addBm25Index(docsId, 'documents_bm25_idx', [doc_title, doc_content]);

  // Relations
  console.log('\n🔗 Relations...');
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: emailAcctId, targetTableId: msgsId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ email_accounts → messages');

  console.log('\n✅ Life OS Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
