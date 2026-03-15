/**
 * agent_runtime.ts — Provision Agent Execution/Runtime schema
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
const PLATFORM_HOST = 'meta.localhost';

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
  console.log('\n🤖 Provisioning Agent Runtime Schema\n');

  // 1. Sessions (Execution Logs)
  console.log('⏱️ sessions...');
  const sessionsId = await createOrgTable('sessions');
  await addField(sessionsId, 'title', 'text');
  await addField(sessionsId, 'started_at', 'timestamptz', { defaultValue: 'now()' });
  await addField(sessionsId, 'ended_at', 'timestamptz');
  await addField(sessionsId, 'status', 'text', { defaultValue: "'running'" });
  await addField(sessionsId, 'context_summary', 'text');
  await addField(sessionsId, 'embedding', 'vector(768)');

  // 2. Blueprints (SOPs)
  console.log('📜 blueprints...');
  const blueprintsId = await createOrgTable('blueprints');
  await addField(blueprintsId, 'title', 'text', { isRequired: true });
  await addField(blueprintsId, 'steps', 'jsonb');
  await addField(blueprintsId, 'trigger_conditions', 'text');
  await addField(blueprintsId, 'embedding', 'vector(768)');

  // 3. Execution Log (Granular steps)
  console.log('👣 execution_log...');
  const execLogId = await createOrgTable('execution_log');
  await addField(execLogId, 'step_name', 'text');
  await addField(execLogId, 'input', 'text');
  await addField(execLogId, 'output', 'text');
  await addField(execLogId, 'tool_calls', 'jsonb');
  await addField(execLogId, 'duration_ms', 'integer');
  // Note: embedding on granular logs might be overkill/expensive, skipping unless requested.

  // 4. Chats (Threads)
  console.log('💬 chats...');
  const chatsId = await createOrgTable('chats');
  await addField(chatsId, 'title', 'text');
  await addField(chatsId, 'started_at', 'timestamptz', { defaultValue: 'now()' });
  await addField(chatsId, 'embedding', 'vector(768)');

  // 5. Chat Messages
  console.log('🗣️ chat_messages...');
  const chatMsgsId = await createOrgTable('chat_messages');
  await addField(chatMsgsId, 'role', 'text'); // 'user', 'assistant', 'system'
  await addField(chatMsgsId, 'content', 'text');
  await addField(chatMsgsId, 'tool_calls', 'jsonb');
  await addField(chatMsgsId, 'embedding', 'vector(768)');

  // 6. Relations
  console.log('\n🔗 Relations...');

  // Sessions -has-many-> Execution Logs
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: sessionsId, targetTableId: execLogId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ sessions → execution_log');

  // Chats -has-many-> Messages
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: chatsId, targetTableId: chatMsgsId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ chats → chat_messages');

  console.log('\n✅ Agent Runtime Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
