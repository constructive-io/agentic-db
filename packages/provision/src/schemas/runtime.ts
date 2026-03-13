/**
 * runtime.ts \u2014 Agent Runtime domain schema
 *
 * Tables: agents, sessions, execution_log, chats, chat_messages, threads,
 *         blueprints, processes, scheduled_jobs
 */

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
  entityGrants,
  entityPolicyData,
} from '../helpers';

const databaseId = requireDatabaseId();
const client = createPlatformClient();


async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision
      .create({
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
      })
      .unwrap()
  );
  const tableId =
    result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() =>
    client.secureTableProvision
      .create({
        data: {
          databaseId,
          tableId,
          nodeType: 'DataTimestamps',
          nodeData: { include_id: false } as any,
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log(`   \u2713 ${tableName}`);
  return tableId;
}

async function addField(
  tableId: string,
  name: string,
  type: string,
  opts: { isRequired?: boolean; defaultValue?: string } = {}
): Promise<string> {
  const result = await withRetry(() =>
    client.field
      .create({
        data: {
          tableId,
          name,
          type,
          isRequired: opts.isRequired ?? false,
          label: name,
          ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}),
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}


async function main() {
  console.log('\n\u2699\ufe0f  Agent Runtime Schema\n');

  // -- Agents ---------------------------------------------------------------
  console.log('\ud83e\udd16 agents...');
  const agentsId = await createOrgTable('agents');
  await addField(agentsId, 'name', 'text', { isRequired: true });
  await addField(agentsId, 'role', 'text');
  await addField(agentsId, 'capabilities', 'jsonb');
  await addField(agentsId, 'config', 'jsonb');
  await addField(agentsId, 'status', 'text', { defaultValue: "'idle'" });
  await addField(agentsId, 'embedding_text', 'text');
  await addField(agentsId, 'embedding', 'vector(768)');

  // -- Sessions -------------------------------------------------------------
  console.log('\n\ud83d\udce1 sessions...');
  const sessionsId = await createOrgTable('sessions');
  await addField(sessionsId, 'title', 'text');
  await addField(sessionsId, 'agent_id', 'uuid');
  await addField(sessionsId, 'started_at', 'timestamptz');
  await addField(sessionsId, 'ended_at', 'timestamptz');
  await addField(sessionsId, 'status', 'text', { defaultValue: "'active'" });
  await addField(sessionsId, 'context_summary', 'text');
  await addField(sessionsId, 'embedding_text', 'text');
  await addField(sessionsId, 'embedding', 'vector(768)');

  // -- Execution Log --------------------------------------------------------
  console.log('\n\ud83d\udcca execution_log...');
  const execLogId = await createOrgTable('execution_log');
  await addField(execLogId, 'session_id', 'uuid');
  await addField(execLogId, 'step_name', 'text');
  await addField(execLogId, 'input', 'text');
  await addField(execLogId, 'output', 'text');
  await addField(execLogId, 'tool_calls', 'jsonb');
  await addField(execLogId, 'duration_ms', 'int');

  // -- Chats ----------------------------------------------------------------
  console.log('\n\ud83d\udcac chats...');
  const chatsId = await createOrgTable('chats');
  await addField(chatsId, 'title', 'text');
  await addField(chatsId, 'started_at', 'timestamptz');
  await addField(chatsId, 'embedding_text', 'text');
  await addField(chatsId, 'embedding', 'vector(768)');

  // -- Chat Messages --------------------------------------------------------
  console.log('\n\ud83d\udce8 chat_messages...');
  const chatMsgsId = await createOrgTable('chat_messages');
  await addField(chatMsgsId, 'chat_id', 'uuid');
  await addField(chatMsgsId, 'thread_id', 'uuid');
  await addField(chatMsgsId, 'role', 'text');
  await addField(chatMsgsId, 'content', 'text');
  await addField(chatMsgsId, 'tool_calls', 'jsonb');
  await addField(chatMsgsId, 'embedding_text', 'text');
  await addField(chatMsgsId, 'embedding', 'vector(768)');

  // -- Threads --------------------------------------------------------------
  console.log('\n\ud83e\uddf5 threads...');
  const threadsId = await createOrgTable('threads');
  await addField(threadsId, 'title', 'text', { isRequired: true });
  await addField(threadsId, 'summary', 'text');
  await addField(threadsId, 'status', 'text', { defaultValue: "'open'" });
  await addField(threadsId, 'parent_thread_id', 'uuid');
  await addField(threadsId, 'chat_id', 'uuid');
  await addField(threadsId, 'embedding_text', 'text');
  await addField(threadsId, 'embedding', 'vector(768)');

  // -- Blueprints -----------------------------------------------------------
  console.log('\n\ud83d\udcd0 blueprints...');
  const blueprintsId = await createOrgTable('blueprints');
  await addField(blueprintsId, 'title', 'text', { isRequired: true });
  await addField(blueprintsId, 'steps', 'jsonb');
  await addField(blueprintsId, 'trigger_conditions', 'text');
  await addField(blueprintsId, 'conversation_id', 'uuid');
  await addField(blueprintsId, 'tags', 'citext[]');
  await addField(blueprintsId, 'embedding_text', 'text');
  await addField(blueprintsId, 'embedding', 'vector(768)');

  // -- Processes ------------------------------------------------------------
  console.log('\n\u2699\ufe0f  processes...');
  const processesId = await createOrgTable('processes');
  await addField(processesId, 'pid', 'int');
  await addField(processesId, 'agent_id', 'uuid');
  await addField(processesId, 'command', 'text');
  await addField(processesId, 'started_at', 'timestamptz');
  await addField(processesId, 'ended_at', 'timestamptz');
  await addField(processesId, 'status', 'text', { defaultValue: "'running'" });
  await addField(processesId, 'exit_code', 'int');
  await addField(processesId, 'logs_path', 'text');

  // -- Scheduled Jobs -------------------------------------------------------
  console.log('\n\u23f0 scheduled_jobs...');
  const scheduledJobsId = await createOrgTable('scheduled_jobs');
  await addField(scheduledJobsId, 'name', 'text', { isRequired: true });
  await addField(scheduledJobsId, 'schedule', 'text', { isRequired: true });
  await addField(scheduledJobsId, 'command', 'text', { isRequired: true });
  await addField(scheduledJobsId, 'agent_id', 'uuid');
  await addField(scheduledJobsId, 'active', 'bool', { defaultValue: 'true' });
  await addField(scheduledJobsId, 'last_run', 'timestamptz');
  await addField(scheduledJobsId, 'next_run', 'timestamptz');

  // -- Relations ------------------------------------------------------------
  console.log('\n\ud83d\udd17 Relations...');

  // agents -> sessions (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: agentsId,
          targetTableId: sessionsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 agents -> sessions');

  // sessions -> execution_log (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: sessionsId,
          targetTableId: execLogId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 sessions -> execution_log');

  // chats -> chat_messages (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: chatsId,
          targetTableId: chatMsgsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 chats -> chat_messages');

  // threads -> chat_messages (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: threadsId,
          targetTableId: chatMsgsId,
          deleteAction: 'n',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 threads -> chat_messages');

  // chats -> threads (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: chatsId,
          targetTableId: threadsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 chats -> threads');

  // threads self-referential (parent)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationBelongsTo',
          sourceTableId: threadsId,
          targetTableId: threadsId,
          fieldName: 'parent_thread_id',
          sourceFieldName: 'parent_thread_id',
          targetFieldName: 'id',
          deleteAction: 'n',
          isRequired: false,
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 threads -> threads (parent)');

  // agents -> processes (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: agentsId,
          targetTableId: processesId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 agents -> processes');

  // agents -> scheduled_jobs (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: agentsId,
          targetTableId: scheduledJobsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 agents -> scheduled_jobs');

  console.log('\n\u2705 Agent Runtime Schema complete!\n');
}

main().catch((err) => {
  console.error('\u274c', err.message ?? err);
  process.exit(1);
});
