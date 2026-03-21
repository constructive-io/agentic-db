/**
 * runtime.ts — Agent Runtime domain schema (blueprint definition)
 *
 * Tables: agents, sessions, execution_log, chats, chat_messages, threads,
 *         blueprints, processes, scheduled_jobs, tools,
 *         workflows, workflow_steps, workflow_runs, activity_log,
 *         agent_spawns, session_archives
 * Chunk tables: agent_chunks, session_chunks, chat_chunks, chat_message_chunks,
 *              thread_chunks, blueprint_chunks, tool_chunks,
 *              session_archive_chunks, activity_log_chunks
 */

import {
  type BlueprintDefinition,
  orgTable,
  chunkTable,
  hasManyChunks,
  provisionBlueprint,
  f,
  req,
  EMBEDDING_FIELDS,
  M2M_JUNCTION_OPTS,
  // Index helpers
  embeddingIndexes,
  chunkIndexes,
  bm25Index,
  btreeIndex,
  ginIndex,
  trgmIndex,
} from '../blueprint';

// ---------------------------------------------------------------------------
// Blueprint definition
// ---------------------------------------------------------------------------

const definition: BlueprintDefinition = {
  tables: [
    // -- Agents ---------------------------------------------------------------
    orgTable('agents', [
      req('name', 'text'),
      f('role', 'text'),
      f('capabilities', 'jsonb'),
      f('config', 'jsonb'),
      f('status', 'text', { default_value: "'idle'" }),
      f('persona', 'text'),
      f('backstory', 'text'),
      f('communication_style', 'text'),
      f('system_prompt', 'text'),
      f('preferred_model', 'text'),
      f('fallback_models', 'text[]'),
      f('temperature', 'numeric'),
      f('mood', 'text'),
      f('focus', 'text'),
      f('last_active_at', 'timestamptz'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Sessions -------------------------------------------------------------
    orgTable('sessions', [
      f('title', 'text'),
      f('agent_id', 'uuid'),
      f('started_at', 'timestamptz'),
      f('ended_at', 'timestamptz'),
      f('status', 'text', { default_value: "'active'" }),
      f('context_summary', 'text'),
      f('session_summary', 'text'),
      f('archived_messages', 'jsonb'),
      f('compression_count', 'int', { default_value: '0' }),
      f('archived_at', 'timestamptz'),
      f('extracted_memory_ids', 'uuid[]'),
      f('contexts_used', 'jsonb'),
      f('skills_used', 'uuid[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Execution Log --------------------------------------------------------
    orgTable('execution_log', [
      f('session_id', 'uuid'),
      f('step_name', 'text'),
      f('input', 'text'),
      f('output', 'text'),
      f('tool_calls', 'jsonb'),
      f('duration_ms', 'int'),
    ]),

    // -- Chats ----------------------------------------------------------------
    orgTable('chats', [
      f('title', 'text'),
      f('started_at', 'timestamptz'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Chat Messages --------------------------------------------------------
    orgTable('chat_messages', [
      f('chat_id', 'uuid'),
      f('thread_id', 'uuid'),
      f('role', 'text'),
      f('content', 'text'),
      f('tool_calls', 'jsonb'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Threads --------------------------------------------------------------
    orgTable('threads', [
      req('title', 'text'),
      f('summary', 'text'),
      f('status', 'text', { default_value: "'open'" }),
      f('parent_thread_id', 'uuid'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Blueprints -----------------------------------------------------------
    orgTable('blueprints', [
      req('title', 'text'),
      f('steps', 'jsonb'),
      f('trigger_conditions', 'text'),
      f('conversation_id', 'uuid'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Processes ------------------------------------------------------------
    orgTable('processes', [
      f('pid', 'int'),
      f('agent_id', 'uuid'),
      f('command', 'text'),
      f('started_at', 'timestamptz'),
      f('ended_at', 'timestamptz'),
      f('status', 'text', { default_value: "'running'" }),
      f('exit_code', 'int'),
      f('logs_path', 'text'),
    ]),

    // -- Scheduled Jobs -------------------------------------------------------
    orgTable('scheduled_jobs', [
      req('name', 'text'),
      req('schedule_type', 'text'),
      f('schedule_expr', 'text'),
      f('run_at', 'timestamptz'),
      req('command', 'text'),
      f('message', 'text'),
      f('agent_id', 'uuid'),
      f('session_id', 'uuid'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('delete_after_run', 'bool', { default_value: 'false' }),
      f('last_run_at', 'timestamptz'),
      f('next_run_at', 'timestamptz'),
      f('run_count', 'int', { default_value: '0' }),
      f('last_result', 'jsonb'),
    ]),

    // -- Tools ----------------------------------------------------------------
    orgTable('tools', [
      req('name', 'text'),
      f('description', 'text'),
      f('type', 'text'),
      f('input_schema', 'jsonb'),
      f('output_schema', 'jsonb'),
      f('endpoint', 'text'),
      f('auth_method', 'text'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Workflows ------------------------------------------------------------
    orgTable('workflows', [
      req('name', 'text'),
      f('description', 'text'),
      f('trigger_type', 'text'),
      f('trigger_config', 'jsonb'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('tags', 'citext[]'),
    ]),

    // -- Workflow Steps -------------------------------------------------------
    orgTable('workflow_steps', [
      req('workflow_id', 'uuid'),
      req('step_order', 'int'),
      req('action_type', 'text'),
      f('action_config', 'jsonb'),
      f('on_success_step', 'int'),
      f('on_failure_step', 'int'),
      f('timeout_ms', 'int'),
    ]),

    // -- Workflow Runs --------------------------------------------------------
    orgTable('workflow_runs', [
      req('workflow_id', 'uuid'),
      f('status', 'text', { default_value: "'pending'" }),
      f('started_at', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('input', 'jsonb'),
      f('output', 'jsonb'),
      f('error', 'text'),
    ]),

    // -- Agent Spawns ---------------------------------------------------------
    orgTable('agent_spawns', [
      req('parent_agent_id', 'uuid'),
      f('child_agent_id', 'uuid'),
      f('session_id', 'uuid'),
      req('task', 'text'),
      f('status', 'text', { default_value: "'running'" }),
      f('result', 'jsonb'),
      f('max_iterations', 'int', { default_value: '15' }),
      f('started_at', 'timestamptz'),
      f('completed_at', 'timestamptz'),
    ]),

    // -- Session Archives -----------------------------------------------------
    orgTable('session_archives', [
      req('session_id', 'uuid'),
      req('archive_index', 'int'),
      req('summary', 'text'),
      f('message_range_start', 'int'),
      f('message_range_end', 'int'),
      f('raw_messages', 'jsonb'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Activity Log ---------------------------------------------------------
    orgTable('activity_log', [
      req('activity_type', 'text'),
      f('title', 'text'),
      f('description', 'text'),
      f('occurred_at', 'timestamptz'),
      f('duration_minutes', 'numeric'),
      f('data', 'jsonb'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Chunk tables ---------------------------------------------------------
    chunkTable('agents'),
    chunkTable('sessions'),
    chunkTable('chats'),
    chunkTable('chat_messages'),
    chunkTable('threads'),
    chunkTable('blueprints'),
    chunkTable('tools'),
    chunkTable('session_archives'),
    chunkTable('activity_log'),
  ],

  relations: [
    // -- HasMany: parent -> children ------------------------------------------
    { $type: 'RelationHasMany', source_ref: 'agents',   target_ref: 'sessions',         delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'sessions', target_ref: 'execution_log',    delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'chats',    target_ref: 'chat_messages',    delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'threads',  target_ref: 'chat_messages',    delete_action: 'n' },
    { $type: 'RelationHasMany', source_ref: 'agents',   target_ref: 'processes',        delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'agents',   target_ref: 'scheduled_jobs',   delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'workflows', target_ref: 'workflow_steps',  delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'workflows', target_ref: 'workflow_runs',   delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'sessions', target_ref: 'session_archives', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'agents',   target_ref: 'agent_spawns',     delete_action: 'c' },

    // -- BelongsTo: self-referential ------------------------------------------
    { $type: 'RelationBelongsTo', source_ref: 'threads', target_ref: 'threads', field_name: 'parent_thread_id', source_field_name: 'parent_thread_id', target_field_name: 'id', delete_action: 'n', is_required: false },

    // -- M:N: agent_tools -----------------------------------------------------
    { $type: 'RelationManyToMany', source_ref: 'agents', target_ref: 'tools', junction_table_name: 'agent_tools', source_field_name: 'agent_id', target_field_name: 'tool_id', is_required: false, data: M2M_JUNCTION_OPTS },

    // -- HasMany: chunks (CASCADE delete) -------------------------------------
    hasManyChunks('agents'),
    hasManyChunks('sessions'),
    hasManyChunks('chats'),
    hasManyChunks('chat_messages'),
    hasManyChunks('threads'),
    hasManyChunks('blueprints'),
    hasManyChunks('tools'),
    hasManyChunks('session_archives'),
    hasManyChunks('activity_log'),
  ],

  // -- Phase 3: Indexes -----------------------------------------------------
  indexes: [
    // Embedding indexes (HNSW + BM25)
    ...embeddingIndexes('agents'),
    ...embeddingIndexes('sessions'),
    ...embeddingIndexes('chats'),
    ...embeddingIndexes('chat_messages'),
    ...embeddingIndexes('threads'),
    ...embeddingIndexes('blueprints'),
    ...embeddingIndexes('tools'),
    ...embeddingIndexes('session_archives'),
    ...embeddingIndexes('activity_log'),

    // Extra BM25 on long-form content
    bm25Index('chat_messages', 'content'),
    bm25Index('activity_log', 'description'),

    // Chunk table indexes
    ...chunkIndexes('agents'),
    ...chunkIndexes('sessions'),
    ...chunkIndexes('chats'),
    ...chunkIndexes('chat_messages'),
    ...chunkIndexes('threads'),
    ...chunkIndexes('blueprints'),
    ...chunkIndexes('tools'),
    ...chunkIndexes('session_archives'),
    ...chunkIndexes('activity_log'),

    // GIN on tags
    ginIndex('blueprints', 'tags'),
    ginIndex('tools', 'tags'),
    ginIndex('activity_log', 'tags'),

    // GIN on JSONB
    ginIndex('tools', 'input_schema'),
    ginIndex('workflow_steps', 'action_config'),
    ginIndex('activity_log', 'data'),

    // Trigram indexes
    trgmIndex('agents', 'name'),
    trgmIndex('blueprints', 'title'),
    trgmIndex('tools', 'name'),

    // B-tree indexes
    btreeIndex('agents', 'status'),
    btreeIndex('agents', 'preferred_model'),
    btreeIndex('agents', 'last_active_at'),
    btreeIndex('sessions', 'status'),
    btreeIndex('sessions', 'started_at'),
    btreeIndex('sessions', 'agent_id'),
    btreeIndex('sessions', 'archived_at'),
    btreeIndex('sessions', 'compression_count'),
    btreeIndex('execution_log', 'session_id'),
    btreeIndex('chats', 'started_at'),
    btreeIndex('chat_messages', 'chat_id'),
    btreeIndex('chat_messages', 'thread_id'),
    btreeIndex('chat_messages', 'role'),
    btreeIndex('threads', 'status'),
    btreeIndex('threads', 'parent_thread_id'),
    btreeIndex('processes', 'agent_id'),
    btreeIndex('processes', 'status'),
    btreeIndex('scheduled_jobs', 'is_active'),
    btreeIndex('scheduled_jobs', 'next_run_at'),
    btreeIndex('scheduled_jobs', 'schedule_type'),
    btreeIndex('scheduled_jobs', 'agent_id'),
    btreeIndex('tools', 'type'),
    btreeIndex('tools', 'is_active'),
    btreeIndex('workflows', 'is_active'),
    btreeIndex('workflow_steps', 'workflow_id'),
    btreeIndex('workflow_steps', 'step_order'),
    btreeIndex('workflow_runs', 'workflow_id'),
    btreeIndex('workflow_runs', 'status'),
    btreeIndex('workflow_runs', 'started_at'),
    btreeIndex('activity_log', 'activity_type'),
    btreeIndex('activity_log', 'occurred_at'),
    btreeIndex('agent_spawns', 'parent_agent_id'),
    btreeIndex('agent_spawns', 'status'),
    btreeIndex('session_archives', 'session_id'),

    // NOTE: agent_tools junction table indexes are auto-created by M:N relation
  ],
};

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  await provisionBlueprint(definition, 'Agent Runtime Schema');
}

export { main as default };
