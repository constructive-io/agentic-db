/**
 * agent_runtime.ts — Provision Agent Execution/Runtime schema using inline fields
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
  console.log('\nProvisioning Agent Runtime Schema\n');

  const sessionsId = await createOrgTable('sessions', [
    { name: 'title', type: 'text' },
    { name: 'started_at', type: 'timestamptz', default: 'now()' },
    { name: 'ended_at', type: 'timestamptz' },
    { name: 'status', type: 'text', default: "'running'" },
    { name: 'context_summary', type: 'text' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  await createOrgTable('blueprints', [
    { name: 'title', type: 'text', is_required: true },
    { name: 'steps', type: 'jsonb' },
    { name: 'trigger_conditions', type: 'text' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const execLogId = await createOrgTable('execution_log', [
    { name: 'step_name', type: 'text' },
    { name: 'input', type: 'text' },
    { name: 'output', type: 'text' },
    { name: 'tool_calls', type: 'jsonb' },
    { name: 'duration_ms', type: 'integer' },
  ]);

  const chatsId = await createOrgTable('chats', [
    { name: 'title', type: 'text' },
    { name: 'started_at', type: 'timestamptz', default: 'now()' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const chatMsgsId = await createOrgTable('chat_messages', [
    { name: 'role', type: 'text' },
    { name: 'content', type: 'text' },
    { name: 'tool_calls', type: 'jsonb' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  console.log('\nRelations...');
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: sessionsId, targetTableId: execLogId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   + sessions -> execution_log');

  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: chatsId, targetTableId: chatMsgsId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   + chats -> chat_messages');

  console.log('\nAgent Runtime Schema complete!\n');
}

main().catch((err) => { console.error(err.message ?? err); process.exit(1); });
