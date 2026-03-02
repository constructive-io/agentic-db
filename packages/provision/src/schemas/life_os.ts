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

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}) {
  await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
}

async function main() {
  console.log('\n🧬 Provisioning Life OS Schema\n');

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
  await addField(msgsId, 'from', 'text');
  await addField(msgsId, 'to', 'text[]');
  await addField(msgsId, 'subject', 'text');
  await addField(msgsId, 'body_text', 'text');
  await addField(msgsId, 'received_at', 'timestamptz');
  await addField(msgsId, 'embedding', 'vector(768)');

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
  await addField(expensesId, 'category', 'text');
  await addField(expensesId, 'description', 'text');
  await addField(expensesId, 'merchant', 'text');
  await addField(expensesId, 'receipt_url', 'text');
  await addField(expensesId, 'embedding', 'vector(768)');

  // --- Knowledge ---
  console.log('📚 documents...');
  const docsId = await createOrgTable('documents');
  await addField(docsId, 'title', 'text');
  await addField(docsId, 'url', 'text');
  await addField(docsId, 'content', 'text');
  await addField(docsId, 'source_type', 'text');
  await addField(docsId, 'embedding', 'vector(768)');

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
