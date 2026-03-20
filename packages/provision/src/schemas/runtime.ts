/**
 * runtime.ts \u2014 Agent Runtime domain schema
 *
 * Tables: agents, sessions, execution_log, chats, chat_messages, threads,
 *         blueprints, processes, scheduled_jobs, tools,
 *         workflows, workflow_steps, workflow_runs, activity_log,
 *         agent_spawns, session_archives
 * Chunk tables: agent_chunks, session_chunks, chat_chunks, chat_message_chunks,
 *              thread_chunks, blueprint_chunks, tool_chunks,
 *              session_archive_chunks, activity_log_chunks
 * Note: context_relations removed (polymorphic anti-pattern)
 * Note: activity_log simplified to personal activity log (no polymorphic fields)
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
  // Soul / persona
  await addField(agentsId, 'persona', 'text');
  await addField(agentsId, 'backstory', 'text');
  await addField(agentsId, 'communication_style', 'text'); // casual | formal | terse | empathetic
  await addField(agentsId, 'system_prompt', 'text');
  await addField(agentsId, 'preferred_model', 'text');
  await addField(agentsId, 'fallback_models', 'text[]');
  await addField(agentsId, 'temperature', 'numeric');
  // State
  await addField(agentsId, 'mood', 'text');
  await addField(agentsId, 'focus', 'text');
  await addField(agentsId, 'last_active_at', 'timestamptz');
  await addField(agentsId, 'embedding_text', 'text');
  await addField(agentsId, 'embedding', 'vector(768)');

  // -- Sessions -------------------------------------------------------------
  // Enhanced with OpenViking session compression & archival pattern
  console.log('\n\ud83d\udce1 sessions...');
  const sessionsId = await createOrgTable('sessions');
  await addField(sessionsId, 'title', 'text');
  await addField(sessionsId, 'agent_id', 'uuid');
  await addField(sessionsId, 'started_at', 'timestamptz');
  await addField(sessionsId, 'ended_at', 'timestamptz');
  await addField(sessionsId, 'status', 'text', { defaultValue: "'active'" });
  await addField(sessionsId, 'context_summary', 'text');
  // Session compression (OpenViking pattern: messages → archive → memory extraction)
  await addField(sessionsId, 'session_summary', 'text');       // compressed summary of full conversation
  await addField(sessionsId, 'archived_messages', 'jsonb');    // compressed message history
  await addField(sessionsId, 'compression_count', 'int', { defaultValue: '0' }); // how many compressions applied
  await addField(sessionsId, 'archived_at', 'timestamptz');    // when session was archived
  await addField(sessionsId, 'extracted_memory_ids', 'uuid[]'); // memories extracted from this session
  await addField(sessionsId, 'contexts_used', 'jsonb');        // which contexts were loaded during session
  await addField(sessionsId, 'skills_used', 'uuid[]');         // which skills were invoked
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
  // Enhanced with OpenViking CronTool pattern: interval/cron/once scheduling
  console.log('\n\u23f0 scheduled_jobs...');
  const scheduledJobsId = await createOrgTable('scheduled_jobs');
  await addField(scheduledJobsId, 'name', 'text', { isRequired: true });
  await addField(scheduledJobsId, 'schedule_type', 'text', { isRequired: true }); // interval | cron | once
  await addField(scheduledJobsId, 'schedule_expr', 'text');    // cron expression or interval string
  await addField(scheduledJobsId, 'run_at', 'timestamptz');    // for one-time jobs (schedule_type = 'once')
  await addField(scheduledJobsId, 'command', 'text', { isRequired: true });
  await addField(scheduledJobsId, 'message', 'text');          // human-readable description / reminder text
  await addField(scheduledJobsId, 'agent_id', 'uuid');
  await addField(scheduledJobsId, 'session_id', 'uuid');
  await addField(scheduledJobsId, 'is_active', 'bool', { defaultValue: 'true' });
  await addField(scheduledJobsId, 'delete_after_run', 'bool', { defaultValue: 'false' }); // OpenViking: one-shot jobs
  await addField(scheduledJobsId, 'last_run_at', 'timestamptz');
  await addField(scheduledJobsId, 'next_run_at', 'timestamptz');
  await addField(scheduledJobsId, 'run_count', 'int', { defaultValue: '0' });
  await addField(scheduledJobsId, 'last_result', 'jsonb');

  // -- Tools ----------------------------------------------------------------
  console.log('\n\ud83d\udee0\ufe0f  tools...');
  const toolsId = await createOrgTable('tools');
  await addField(toolsId, 'name', 'text', { isRequired: true });
  await addField(toolsId, 'description', 'text');
  await addField(toolsId, 'type', 'text');           // api | function | webhook
  await addField(toolsId, 'input_schema', 'jsonb');
  await addField(toolsId, 'output_schema', 'jsonb');
  await addField(toolsId, 'endpoint', 'text');
  await addField(toolsId, 'auth_method', 'text');
  await addField(toolsId, 'is_active', 'bool', { defaultValue: 'true' });
  await addField(toolsId, 'tags', 'citext[]');
  await addField(toolsId, 'embedding_text', 'text');
  await addField(toolsId, 'embedding', 'vector(768)');

  // -- Workflows ------------------------------------------------------------
  console.log('\n\ud83d\udd04 workflows...');
  const workflowsId = await createOrgTable('workflows');
  await addField(workflowsId, 'name', 'text', { isRequired: true });
  await addField(workflowsId, 'description', 'text');
  await addField(workflowsId, 'trigger_type', 'text');    // manual | scheduled | webhook | event
  await addField(workflowsId, 'trigger_config', 'jsonb');
  await addField(workflowsId, 'is_active', 'bool', { defaultValue: 'true' });
  await addField(workflowsId, 'tags', 'citext[]');
  // No embeddings — workflows are queried by status/trigger, not semantically

  // -- Workflow Steps -------------------------------------------------------
  console.log('\n\ud83d\udccd workflow_steps...');
  const workflowStepsId = await createOrgTable('workflow_steps');
  await addField(workflowStepsId, 'workflow_id', 'uuid', { isRequired: true });
  await addField(workflowStepsId, 'step_order', 'int', { isRequired: true });
  await addField(workflowStepsId, 'action_type', 'text', { isRequired: true });
  await addField(workflowStepsId, 'action_config', 'jsonb');
  await addField(workflowStepsId, 'on_success_step', 'int');
  await addField(workflowStepsId, 'on_failure_step', 'int');
  await addField(workflowStepsId, 'timeout_ms', 'int');

  // -- Workflow Runs --------------------------------------------------------
  console.log('\n\u25b6\ufe0f  workflow_runs...');
  const workflowRunsId = await createOrgTable('workflow_runs');
  await addField(workflowRunsId, 'workflow_id', 'uuid', { isRequired: true });
  await addField(workflowRunsId, 'status', 'text', { defaultValue: "'pending'" });
  await addField(workflowRunsId, 'started_at', 'timestamptz');
  await addField(workflowRunsId, 'completed_at', 'timestamptz');
  await addField(workflowRunsId, 'input', 'jsonb');
  await addField(workflowRunsId, 'output', 'jsonb');
  await addField(workflowRunsId, 'error', 'text');

  // -- Agent Spawns ---------------------------------------------------------
  // OpenViking subagent pattern: parent agents can spawn child agents for background work
  console.log('\n\ud83e\udd16 agent_spawns...');
  const agentSpawnsId = await createOrgTable('agent_spawns');
  await addField(agentSpawnsId, 'parent_agent_id', 'uuid', { isRequired: true });
  await addField(agentSpawnsId, 'child_agent_id', 'uuid');
  await addField(agentSpawnsId, 'session_id', 'uuid');
  await addField(agentSpawnsId, 'task', 'text', { isRequired: true });
  await addField(agentSpawnsId, 'status', 'text', { defaultValue: "'running'" }); // running | completed | failed | timeout
  await addField(agentSpawnsId, 'result', 'jsonb');
  await addField(agentSpawnsId, 'max_iterations', 'int', { defaultValue: '15' }); // OpenViking default
  await addField(agentSpawnsId, 'started_at', 'timestamptz');
  await addField(agentSpawnsId, 'completed_at', 'timestamptz');

  // -- Session Archives ------------------------------------------------------
  // Stores compressed message history separately from active sessions
  console.log('\n\ud83d\udce6 session_archives...');
  const sessionArchivesId = await createOrgTable('session_archives');
  await addField(sessionArchivesId, 'session_id', 'uuid', { isRequired: true });
  await addField(sessionArchivesId, 'archive_index', 'int', { isRequired: true }); // nth compression
  await addField(sessionArchivesId, 'summary', 'text', { isRequired: true });
  await addField(sessionArchivesId, 'message_range_start', 'int'); // first message index in this archive
  await addField(sessionArchivesId, 'message_range_end', 'int');   // last message index
  await addField(sessionArchivesId, 'raw_messages', 'jsonb');      // original messages if retained
  await addField(sessionArchivesId, 'embedding_text', 'text');
  await addField(sessionArchivesId, 'embedding', 'vector(768)');

  // -- Activity Log ---------------------------------------------------------
  // Personal activity log: exercise, meals, wellness, etc.
  console.log('\n\ud83d\udcca activity_log...');
  const activityLogId = await createOrgTable('activity_log');
  await addField(activityLogId, 'activity_type', 'text', { isRequired: true }); // exercise | meal | wellness | reading | etc.
  await addField(activityLogId, 'title', 'text');
  await addField(activityLogId, 'description', 'text');
  await addField(activityLogId, 'occurred_at', 'timestamptz');
  await addField(activityLogId, 'duration_minutes', 'numeric');
  await addField(activityLogId, 'data', 'jsonb');  // activity-specific extras
  await addField(activityLogId, 'tags', 'citext[]');
  await addField(activityLogId, 'embedding_text', 'text');
  await addField(activityLogId, 'embedding', 'vector(768)');

  // =========================================================================
  // Chunk tables (1-to-many for embedding chunking)
  // =========================================================================
  console.log('\n\ud83e\udde9 Chunk tables...');

  const createChunkTable = async (name: string): Promise<string> => {
    const tableId = await createOrgTable(name);
    await addField(tableId, 'chunk_index', 'int', { isRequired: true });
    await addField(tableId, 'content', 'text', { isRequired: true });
    await addField(tableId, 'embedding_text', 'text');
    await addField(tableId, 'embedding', 'vector(768)');
    return tableId;
  };

  const agentChunksId = await createChunkTable('agent_chunks');
  const sessionChunksId = await createChunkTable('session_chunks');
  const chatChunksId = await createChunkTable('chat_chunks');
  const chatMessageChunksId = await createChunkTable('chat_message_chunks');
  const threadChunksId = await createChunkTable('thread_chunks');
  const blueprintChunksId = await createChunkTable('blueprint_chunks');
  const toolChunksId = await createChunkTable('tool_chunks');
  const sessionArchiveChunksId = await createChunkTable('session_archive_chunks');
  const activityLogChunksId = await createChunkTable('activity_log_chunks');

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

  // workflows -> workflow_steps (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: workflowsId,
          targetTableId: workflowStepsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 workflows -> workflow_steps');

  // workflows -> workflow_runs (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: workflowsId,
          targetTableId: workflowRunsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 workflows -> workflow_runs');

  // agent_tools M:N (agents <-> tools)
  const m2mOpts = {
    nodeType: 'DataEntityMembership',
    policyType: 'AuthzEntityMembership',
    policyPermissive: true,
    policyData: entityPolicyData,
    grantRoles: ['authenticated'],
    grantPrivileges: [
      ['select', '*'],
      ['insert', '*'],
      ['delete', '*'],
    ] as any,
  };

  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationManyToMany',
          sourceTableId: agentsId,
          targetTableId: toolsId,
          junctionTableName: 'agent_tools',
          sourceFieldName: 'agent_id',
          targetFieldName: 'tool_id',
          isRequired: false,
          ...m2mOpts,
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 agents <-> tools (agent_tools)');

  // sessions -> session_archives (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: sessionsId,
          targetTableId: sessionArchivesId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 sessions -> session_archives');

  // agents -> agent_spawns (HasMany, as parent)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: agentsId,
          targetTableId: agentSpawnsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 agents -> agent_spawns');

  // Chunk table relations (parent -> chunks, CASCADE delete)
  const hasMany = async (sourceId: string, targetId: string, label: string) => {
    await withRetry(() =>
      client.relationProvision
        .create({
          data: {
            databaseId,
            relationType: 'RelationHasMany',
            sourceTableId: sourceId,
            targetTableId: targetId,
            deleteAction: 'c',
          },
          select: { id: true },
        })
        .unwrap()
    );
    console.log(`   \u2713 ${label}`);
  };

  await hasMany(agentsId, agentChunksId, 'agents -> agent_chunks');
  await hasMany(sessionsId, sessionChunksId, 'sessions -> session_chunks');
  await hasMany(chatsId, chatChunksId, 'chats -> chat_chunks');
  await hasMany(chatMsgsId, chatMessageChunksId, 'chat_messages -> chat_message_chunks');
  await hasMany(threadsId, threadChunksId, 'threads -> thread_chunks');
  await hasMany(blueprintsId, blueprintChunksId, 'blueprints -> blueprint_chunks');
  await hasMany(toolsId, toolChunksId, 'tools -> tool_chunks');
  await hasMany(sessionArchivesId, sessionArchiveChunksId, 'session_archives -> session_archive_chunks');
  await hasMany(activityLogId, activityLogChunksId, 'activity_log -> activity_log_chunks');

  console.log('\n\u2705 Agent Runtime Schema complete!\n');
}

export { main as default };
