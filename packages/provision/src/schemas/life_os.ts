/**
 * life_os.ts — Provision Life OS schema tables using inline fields
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
  console.error('Missing DATABASE_ID or ACCESS_TOKEN in .env');
  process.exit(1);
}

const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
  Authorization: `Bearer ${accessToken}`,
});
const client = createClient({ adapter });

interface FieldDef {
  name: string;
  type: string;
  is_required?: boolean;
  default?: string;
}

async function createOrgTable(tableName: string, fields: FieldDef[] = []): Promise<string> {
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
        ...(fields.length > 0 ? { fields: fields as any } : {}),
      },
      select: { id: true, tableId: true },
    }).unwrap()
  );
  const tableId = result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() => client.secureTableProvision.create({ data: { databaseId, tableId, nodeType: 'DataTimestamps', nodeData: { include_id: false } as any }, select: { id: true } }).unwrap());
  console.log(`   + ${tableName} (${fields.length} fields)`);
  return tableId;
}

async function main() {
  console.log('\nProvisioning Life OS Schema\n');

  const emailId = await createOrgTable('email_accounts', [
    { name: 'email', type: 'text', is_required: true },
    { name: 'provider', type: 'text' },
    { name: 'sync_state', type: 'jsonb' },
  ]);

  const messagesId = await createOrgTable('messages', [
    { name: 'thread_id', type: 'text' },
    { name: 'remote_id', type: 'text' },
    { name: 'from', type: 'text' },
    { name: 'to', type: 'text[]' },
    { name: 'subject', type: 'text' },
    { name: 'body_text', type: 'text' },
    { name: 'received_at', type: 'timestamptz' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  await createOrgTable('calendar_sync', [
    { name: 'provider', type: 'text' },
    { name: 'sync_token', type: 'text' },
    { name: 'last_synced_at', type: 'timestamptz' },
  ]);

  await createOrgTable('expenses', [
    { name: 'amount', type: 'numeric' },
    { name: 'currency', type: 'text', default: "'USD'" },
    { name: 'date', type: 'date' },
    { name: 'category', type: 'text' },
    { name: 'description', type: 'text' },
    { name: 'merchant', type: 'text' },
    { name: 'receipt_url', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  await createOrgTable('documents', [
    { name: 'title', type: 'text', is_required: true },
    { name: 'url', type: 'text' },
    { name: 'content', type: 'text' },
    { name: 'source_type', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  console.log('\nRelations...');
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: emailId, targetTableId: messagesId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   + email_accounts -> messages');

  console.log('\nLife OS Schema complete!\n');
}

main().catch((err) => { console.error(err.message ?? err); process.exit(1); });
