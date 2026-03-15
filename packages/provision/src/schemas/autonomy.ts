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
 * Uses inline fields on secureTableProvision.create() for new tables.
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
// dotenv.config() removed

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

// --- Helpers ---

interface FieldDef {
  name: string;
  type: string;
  is_required?: boolean;
  default?: string;
}

async function createOrgTable(tableName: string, fields: FieldDef[] = []): Promise<string> {
  const existing = await withRetry(() => client.table.findMany({
    where: { databaseId: { equalTo: databaseId }, name: { equalTo: tableName } },
    first: 1,
    select: { id: true },
  }).unwrap());
  if ((existing as any)?.tables?.nodes?.length > 0) {
    console.log(`   + ${tableName} (exists, ${fields.length} fields)`);
    return (existing as any).tables.nodes[0].id;
  }

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

async function addFieldToExistingTable(tableName: string, fieldName: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<void> {
  const tables = await withRetry(() => client.table.findMany({
    where: { databaseId: { equalTo: databaseId }, name: { equalTo: tableName } },
    first: 1,
    select: { id: true },
  }).unwrap());
  const nodes = (tables as any)?.tables?.nodes || [];
  if (nodes.length === 0) {
    console.warn(`      Warning: Table ${tableName} not found, skipping ${fieldName}`);
    return;
  }
  const tableId = nodes[0].id;

  const existing = await withRetry(() => client.field.findMany({
    where: { tableId: { equalTo: tableId }, name: { equalTo: fieldName } },
    first: 1,
    select: { id: true },
  }).unwrap());
  if ((existing as any)?.fields?.nodes?.length > 0) {
    console.log(`      skip ${fieldName} (already exists)`);
    return;
  }

  try {
    await withRetry(() => client.field.create({ data: { tableId, name: fieldName, type, isRequired: opts.isRequired ?? false, label: fieldName, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
    console.log(`      + ${fieldName} (${type})`);
  } catch (e: any) {
    if (String(e?.message || e).includes('duplicate key') || String(e?.message || e).includes('already exists')) {
      console.log(`      skip ${fieldName} (already exists)`);
    } else {
      throw e;
    }
  }
}

// --- Main ---

async function main() {
  console.log('\nProvisioning Agent-OS V2 Autonomy Schema\n');
  console.log(`   Database ID: ${databaseId}`);

  // ===== NEW TABLES (inline fields) =====

  const ideasId = await createOrgTable('ideas', [
    { name: 'content', type: 'text', is_required: true },
    { name: 'tags', type: 'citext[]' },
    { name: 'source', type: 'text', default: "'manual'" },
    { name: 'status', type: 'text', default: "'new'" },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const remindersId = await createOrgTable('reminders', [
    { name: 'title', type: 'text', is_required: true },
    { name: 'due_at', type: 'timestamptz' },
    { name: 'completed_at', type: 'timestamptz' },
    { name: 'recurrence', type: 'text' },
    { name: 'status', type: 'text', default: "'pending'" },
    { name: 'related_entity_id', type: 'uuid' },
    { name: 'related_entity_type', type: 'text' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const agentsId = await createOrgTable('agents', [
    { name: 'name', type: 'text', is_required: true },
    { name: 'role', type: 'text' },
    { name: 'capabilities', type: 'jsonb', default: "'[]'" },
    { name: 'config', type: 'jsonb', default: "'{}'" },
    { name: 'status', type: 'text', default: "'idle'" },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const jobsId = await createOrgTable('scheduled_jobs', [
    { name: 'name', type: 'text', is_required: true },
    { name: 'schedule', type: 'text', is_required: true },
    { name: 'command', type: 'text', is_required: true },
    { name: 'active', type: 'boolean', default: 'true' },
    { name: 'last_run', type: 'timestamptz' },
    { name: 'next_run', type: 'timestamptz' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const processesId = await createOrgTable('processes', [
    { name: 'pid', type: 'integer' },
    { name: 'agent_id', type: 'uuid' },
    { name: 'command', type: 'text' },
    { name: 'started_at', type: 'timestamptz', default: 'now()' },
    { name: 'ended_at', type: 'timestamptz' },
    { name: 'status', type: 'text', default: "'running'" },
    { name: 'exit_code', type: 'integer' },
    { name: 'logs_path', type: 'text' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const threadsId = await createOrgTable('threads', [
    { name: 'title', type: 'text', is_required: true },
    { name: 'summary', type: 'text' },
    { name: 'status', type: 'text', default: "'active'" },
    { name: 'parent_thread_id', type: 'uuid' },
    { name: 'chat_id', type: 'uuid' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  // ===== RELATIONS =====
  console.log('\nRelations...');

  // processes.agent_id -> agents.id
  try {
    await withRetry(() => client.relationProvision.create({
      data: { databaseId, relationType: 'RelationBelongsTo', sourceTableId: processesId, targetTableId: agentsId, sourceFieldName: 'agent_id', targetFieldName: 'id', deleteAction: 'n' },
      select: { id: true },
    }).unwrap());
    console.log('   + processes -> agents');
  } catch (e: any) {
    console.log(`      Warning: processes -> agents: ${e.message}`);
  }

  // threads.chat_id -> chats (lookup existing chats table)
  try {
    const chatsTables = await withRetry(() => client.table.findMany({
      where: { databaseId: { equalTo: databaseId }, name: { equalTo: 'chats' } },
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
      console.log('   + threads -> chats');
    }
  } catch (e) {
    console.warn('   Warning: Could not link threads -> chats (table may not exist yet)');
  }

  // ===== ENHANCE EXISTING TABLES =====
  console.log('\nEnhancing existing tables...');

  // rules: +slug, +severity, +verification, +trigger_concept
  console.log('\n   rules (enhance)...');
  await addFieldToExistingTable('rules', 'slug', 'text');
  await addFieldToExistingTable('rules', 'severity', 'text', { defaultValue: "'warning'" });
  await addFieldToExistingTable('rules', 'verification', 'text');
  await addFieldToExistingTable('rules', 'trigger_concept', 'vector(768)');

  // skills: +slug, +procedure, +interface, +requirements, +file_path, +content_hash, +intent_trigger
  console.log('\n   skills (enhance)...');
  await addFieldToExistingTable('skills', 'slug', 'text');
  await addFieldToExistingTable('skills', 'procedure', 'text');
  await addFieldToExistingTable('skills', 'interface', 'jsonb', { defaultValue: "'{}'" });
  await addFieldToExistingTable('skills', 'requirements', 'jsonb', { defaultValue: "'{}'" });
  await addFieldToExistingTable('skills', 'file_path', 'text');
  await addFieldToExistingTable('skills', 'content_hash', 'text');
  await addFieldToExistingTable('skills', 'intent_trigger', 'vector(768)');

  // tasks: +assigned_agent_id, +conversation_id, +parent_task_id, +dependencies
  console.log('\n   tasks (enhance)...');
  await addFieldToExistingTable('tasks', 'assigned_agent_id', 'uuid');
  await addFieldToExistingTable('tasks', 'conversation_id', 'uuid');
  await addFieldToExistingTable('tasks', 'parent_task_id', 'uuid');
  await addFieldToExistingTable('tasks', 'dependencies', 'uuid[]');

  // blueprints: +conversation_id
  console.log('\n   blueprints (enhance)...');
  await addFieldToExistingTable('blueprints', 'conversation_id', 'uuid');

  // chat_messages: +thread_id, +role, +embedding
  console.log('\n   chat_messages (enhance)...');
  await addFieldToExistingTable('chat_messages', 'thread_id', 'uuid');
  await addFieldToExistingTable('chat_messages', 'role', 'text', { defaultValue: "'user'" });
  await addFieldToExistingTable('chat_messages', 'embedding', 'vector(768)');

  // memories: +importance, +verified
  console.log('\n   memories (enhance)...');
  await addFieldToExistingTable('memories', 'importance', 'integer', { defaultValue: '1' });
  await addFieldToExistingTable('memories', 'verified', 'boolean', { defaultValue: 'false' });

  console.log('\nV2 Autonomy Schema complete!\n');
}

main().catch((err) => { console.error(err.message ?? err); process.exit(1); });
