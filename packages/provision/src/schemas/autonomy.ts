/**
 * autonomy.ts — Agent OS V2 Autonomy Schema
 * 
 * New tables: ideas, reminders, agents, scheduled_jobs, processes, threads
 * Enhanced tables: tasks (+assigned_agent_id, +conversation_id), 
 *                  blueprints (+conversation_id),
 *                  chat_messages (+thread_id, +role, +embedding),
 *                  memories (+importance, +verified)
 * 
 * All new tables include vector(768) for pgvector semantic search.
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
// dotenv.config() removed

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

// --- Helpers (same pattern as crm.ts) ---

async function createOrgTable(tableName: string): Promise<string> {
  const existing = await withRetry(() => client.table.findMany({
    condition: { databaseId: { equalTo: databaseId }, name: { equalTo: tableName } },
    first: 1,
    select: { id: true },
  }).unwrap());
  if ((existing as any)?.tables?.nodes?.length > 0) {
    console.log(`   ✓ ${tableName} (exists)`);
    return (existing as any).tables.nodes[0].id;
  }

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

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<string> {
  const existing = await withRetry(() => client.field.findMany({
    condition: { tableId: { equalTo: tableId }, name: { equalTo: name } },
    first: 1,
    select: { id: true },
  }).unwrap());
  if ((existing as any)?.fields?.nodes?.length > 0) {
    console.log(`      ⏭️ ${name} already exists`);
    return (existing as any).fields.nodes[0].id;
  }

  try {
    const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
    console.log(`      + ${name} (${type})`);
    return result.createField?.field?.id!;
  } catch (e: any) {
    if (String(e?.message || e).includes('duplicate key') || String(e?.message || e).includes('already exists') || String(e?.message || e).includes('contains null values')) {
      console.log(`      ⏭️ ${name} already exists (error caught)`);
      return '';
    }
    throw e;
  }
}

async function addFieldToExistingTable(tableName: string, fieldName: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<void> {
  // Look up table ID first
  const tables = await withRetry(() => client.table.findMany({
    condition: { databaseId: { equalTo: databaseId }, name: { equalTo: tableName } },
    first: 1,
    select: { id: true },
  }).unwrap());
  const nodes = (tables as any)?.tables?.nodes || [];
  if (nodes.length === 0) {
    console.warn(`      ⚠️ Table ${tableName} not found, skipping ${fieldName}`);
    return;
  }
  const tableId = nodes[0].id;
  try {
    await addField(tableId, fieldName, type, opts);
  } catch (e: any) {
    if (String(e?.message || e).includes('duplicate key') || String(e?.message || e).includes('already exists')) {
      console.log('      ⏭️ ' + fieldName + ' already exists on ' + tableName + ', skipping');
    } else {
      throw e;
    }
  }
}

// --- Main ---

async function main() {
  console.log('\n🚀 Provisioning Agent-OS V2 Autonomy Schema\n');
  console.log(`   Database ID: ${databaseId}`);

  // ===== NEW TABLES =====

  // 1. Ideas (Thought Stream)
  console.log('\n💡 ideas...');
  const ideasId = await createOrgTable('ideas');
  await addField(ideasId, 'content', 'text', { isRequired: true });
  await addField(ideasId, 'tags', 'citext[]');
  await addField(ideasId, 'source', 'text', { defaultValue: "'manual'" });
  await addField(ideasId, 'status', 'text', { defaultValue: "'new'" });
  await addField(ideasId, 'embedding', 'vector(768)');

  // 2. Reminders
  console.log('\n⏰ reminders...');
  const remindersId = await createOrgTable('reminders');
  await addField(remindersId, 'title', 'text', { isRequired: true });
  await addField(remindersId, 'due_at', 'timestamptz');
  await addField(remindersId, 'completed_at', 'timestamptz');
  await addField(remindersId, 'recurrence', 'text');
  await addField(remindersId, 'status', 'text', { defaultValue: "'pending'" });
  await addField(remindersId, 'related_entity_id', 'uuid');
  await addField(remindersId, 'related_entity_type', 'text');
  await addField(remindersId, 'embedding', 'vector(768)');

  // 3. Agents (Workers)
  console.log('\n🤖 agents...');
  const agentsId = await createOrgTable('agents');
  await addField(agentsId, 'name', 'text', { isRequired: true });
  await addField(agentsId, 'role', 'text');
  await addField(agentsId, 'capabilities', 'jsonb', { defaultValue: "'[]'" });
  await addField(agentsId, 'config', 'jsonb', { defaultValue: "'{}'" });
  await addField(agentsId, 'status', 'text', { defaultValue: "'idle'" });
  await addField(agentsId, 'embedding', 'vector(768)');

  // 4. Scheduled Jobs (Cron)
  console.log('\n⏱️ scheduled_jobs...');
  const jobsId = await createOrgTable('scheduled_jobs');
  await addField(jobsId, 'name', 'text', { isRequired: true });
  await addField(jobsId, 'schedule', 'text', { isRequired: true });
  await addField(jobsId, 'command', 'text', { isRequired: true });
  await addField(jobsId, 'active', 'boolean', { defaultValue: 'true' });
  await addField(jobsId, 'last_run', 'timestamptz');
  await addField(jobsId, 'next_run', 'timestamptz');
  await addField(jobsId, 'embedding', 'vector(768)');

  // 5. Processes (Live PIDs)
  console.log('\n⚙️ processes...');
  const processesId = await createOrgTable('processes');
  await addField(processesId, 'pid', 'integer');
  await addField(processesId, 'agent_id', 'uuid');
  await addField(processesId, 'command', 'text');
  await addField(processesId, 'started_at', 'timestamptz', { defaultValue: 'now()' });
  await addField(processesId, 'ended_at', 'timestamptz');
  await addField(processesId, 'status', 'text', { defaultValue: "'running'" });
  await addField(processesId, 'exit_code', 'integer');
  await addField(processesId, 'logs_path', 'text');
  await addField(processesId, 'embedding', 'vector(768)');

  // 6. Threads (Conversation Context)
  console.log('\n💬 threads...');
  const threadsId = await createOrgTable('threads');
  await addField(threadsId, 'title', 'text', { isRequired: true });
  await addField(threadsId, 'summary', 'text');
  await addField(threadsId, 'status', 'text', { defaultValue: "'active'" });
  await addField(threadsId, 'parent_thread_id', 'uuid');
  await addField(threadsId, 'chat_id', 'uuid');
  await addField(threadsId, 'embedding', 'vector(768)');

  // ===== RELATIONS =====
  console.log('\n🔗 Relations...');

  // processes.agent_id → agents.id
  try {
    await withRetry(() => client.relationProvision.create({
      data: { databaseId, relationType: 'RelationBelongsTo', sourceTableId: processesId, targetTableId: agentsId, sourceFieldName: 'agent_id', targetFieldName: 'id', deleteAction: 'n' },
      select: { id: true },
    }).unwrap());
    console.log('   ✓ processes → agents');
  } catch (e: any) {
    console.log(`      ⚠️ processes → agents: ${e.message}`);
  }

  // threads.chat_id → chats (lookup existing chats table)
  try {
    const chatsTables = await withRetry(() => client.table.findMany({
      condition: { databaseId: { equalTo: databaseId }, name: { equalTo: 'chats' } },
      first: 1,
      select: { id: true },
    }).unwrap());
    const chatsNodes = (chatsTables as any)?.tables?.nodes || [];
    if (chatsNodes.length > 0) {
      const chatsTableId = chatsNodes[0].id;
      await withRetry(() => client.relationProvision.create({
        data: { databaseId, relationType: 'RelationBelongsTo', sourceTableId: threadsId, targetTableId: chatsTableId, sourceFieldName: 'chat_id', targetFieldName: 'id', deleteAction: 'n' },
        select: { id: true },
      }).unwrap());
      console.log('   ✓ threads → chats');
    }
  } catch (e) {
    console.warn('   ⚠️ Could not link threads → chats (table may not exist yet)');
  }

  // ===== ENHANCE EXISTING TABLES =====
  // rules: +slug, +severity, +verification, +trigger_concept
  console.log('\n   📏 rules (enhance)...');
  await addFieldToExistingTable('rules', 'slug', 'text');
  await addFieldToExistingTable('rules', 'severity', 'text', { defaultValue: "'warning'" });
  await addFieldToExistingTable('rules', 'verification', 'text');
  await addFieldToExistingTable('rules', 'trigger_concept', 'vector(768)');

  // skills: +slug, +procedure, +interface, +requirements, +file_path, +content_hash, +intent_trigger
  console.log('\n   🛠️ skills (enhance)...');
  await addFieldToExistingTable('skills', 'slug', 'text');
  await addFieldToExistingTable('skills', 'procedure', 'text');
  await addFieldToExistingTable('skills', 'interface', 'jsonb', { defaultValue: "'{}'" });
  await addFieldToExistingTable('skills', 'requirements', 'jsonb', { defaultValue: "'{}'" });
  await addFieldToExistingTable('skills', 'file_path', 'text');
  await addFieldToExistingTable('skills', 'content_hash', 'text');
  await addFieldToExistingTable('skills', 'intent_trigger', 'vector(768)');

  console.log('\n🔧 Enhancing existing tables...');

  // tasks: +assigned_agent_id, +conversation_id, +parent_task_id, +dependencies
  console.log('\n   📝 tasks...');
  await addFieldToExistingTable('tasks', 'assigned_agent_id', 'uuid');
  await addFieldToExistingTable('tasks', 'conversation_id', 'uuid');
  await addFieldToExistingTable('tasks', 'parent_task_id', 'uuid');
  await addFieldToExistingTable('tasks', 'dependencies', 'uuid[]');

  // blueprints: +conversation_id
  console.log('\n   🗺️ blueprints...');
  await addFieldToExistingTable('blueprints', 'conversation_id', 'uuid');

  // chat_messages: +thread_id, +role, +embedding
  console.log('\n   💬 chat_messages...');
  await addFieldToExistingTable('chat_messages', 'thread_id', 'uuid');
  await addFieldToExistingTable('chat_messages', 'role', 'text', { defaultValue: "'user'" });
  await addFieldToExistingTable('chat_messages', 'embedding', 'vector(768)');

  // memories: +importance, +verified
  console.log('\n   🧠 memories...');
  await addFieldToExistingTable('memories', 'importance', 'integer', { defaultValue: '1' });
  await addFieldToExistingTable('memories', 'verified', 'boolean', { defaultValue: 'false' });

  console.log('\n✨✨✨ V2 AUTONOMY SCHEMA COMPLETE ✨✨✨\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
