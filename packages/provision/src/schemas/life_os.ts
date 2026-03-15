/**
 * life_os.ts — Provision Life OS schema tables using platform SDK
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../../.env') });

import { createClient } from '../sdk/platform/orm/index';
import { NodeHttpAdapter } from '../sdk/node-http-adapter';
import { withRetry, entityGrants, entityPolicyData } from '../helpers';

const databaseId = process.env.DATABASE_ID;


if (!databaseId) {
  console.error('❌ Missing DATABASE_ID in env');
  process.exit(1);
}

const PLATFORM_ENDPOINT = process.env.META_ENDPOINT || 'http://localhost:3000/graphql';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  'X-Meta-Schema': 'true',
});
const client = createClient({ adapter });

async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision.create({
      data: { databaseId, tableName, nodeType: 'DataEntityMembership', useRls: true, grantRoles: ['authenticated'], grantPrivileges: entityGrants, policyType: 'AuthzEntityMembership', policyPermissive: true, policyData: entityPolicyData },
      select: { id: true, tableId: true },
    }).unwrap()
  );
  const tableId = result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() => client.secureTableProvision.create({ data: { databaseId, tableId, nodeType: 'DataTimestamps', nodeData: { include_id: false } as any }, select: { id: true } }).unwrap());
  console.log(`   ✓ ${tableName}`);
  return tableId;
}

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string; isArray?: boolean } = {}): Promise<string> {
  const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

async function main() {
  console.log('\n🧬 Provisioning Life OS Schema with Embeddings & Tags\n');

  console.log('📧 email_accounts...');
  const emailId = await createOrgTable('email_accounts');
  await addField(emailId, 'email', 'text', { isRequired: true });
  await addField(emailId, 'provider', 'text');
  await addField(emailId, 'sync_state', 'jsonb');

  console.log('📨 messages...');
  const messagesId = await createOrgTable('messages');
  await addField(messagesId, 'thread_id', 'text');
  await addField(messagesId, 'remote_id', 'text');
  await addField(messagesId, 'from', 'text');
  await addField(messagesId, 'to', 'text[]');
  await addField(messagesId, 'subject', 'text');
  await addField(messagesId, 'body_text', 'text');
  await addField(messagesId, 'received_at', 'timestamptz');
  await addField(messagesId, 'tags', 'citext[]');
  await addField(messagesId, 'embedding', 'vector(768)');

  console.log('📅 calendar_sync...');
  const calId = await createOrgTable('calendar_sync');
  await addField(calId, 'provider', 'text');
  await addField(calId, 'sync_token', 'text');
  await addField(calId, 'last_synced_at', 'timestamptz');

  console.log('💸 expenses...');
  const expensesId = await createOrgTable('expenses');
  await addField(expensesId, 'amount', 'numeric');
  await addField(expensesId, 'currency', 'text', { defaultValue: "'USD'" });
  await addField(expensesId, 'date', 'date');
  await addField(expensesId, 'category', 'text');
  await addField(expensesId, 'description', 'text');
  await addField(expensesId, 'merchant', 'text');
  await addField(expensesId, 'receipt_url', 'text');
  await addField(expensesId, 'tags', 'citext[]');
  await addField(expensesId, 'embedding', 'vector(768)');

  console.log('📚 documents...');
  const docsId = await createOrgTable('documents');
  await addField(docsId, 'title', 'text', { isRequired: true });
  await addField(docsId, 'url', 'text');
  await addField(docsId, 'content', 'text');
  await addField(docsId, 'source_type', 'text');
  await addField(docsId, 'tags', 'citext[]');
  await addField(docsId, 'embedding', 'vector(768)');

  console.log('\n🔗 Relations...');
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: emailId, targetTableId: messagesId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ email_accounts → messages');

  console.log('\n✅ Life OS Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
