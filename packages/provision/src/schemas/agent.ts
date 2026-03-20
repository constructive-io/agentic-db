/**
 * agent.ts — Agent Core domain schema (blueprint definition)
 *
 * Tables: tasks, rules, memories, skills, goals, prompts, skill_executions
 * Chunk tables: task_chunks, rule_chunks, memory_chunks, skill_chunks, goal_chunks, prompt_chunks
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
} from '../blueprint';

// ---------------------------------------------------------------------------
// Blueprint definition
// ---------------------------------------------------------------------------

const definition: BlueprintDefinition = {
  tables: [
    // -- Tasks ----------------------------------------------------------------
    orgTable('tasks', [
      req('title', 'text'),
      f('description', 'text'),
      f('status', 'text', { default_value: "'todo'" }),
      f('priority', 'int'),
      f('project_id', 'uuid'),
      f('task_type', 'text', { default_value: "'human'" }),
      f('assigned_agent_id', 'uuid'),
      f('parent_task_id', 'uuid'),
      f('due_date', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('conversation_id', 'uuid'),
      f('dependencies', 'uuid[]'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Rules ----------------------------------------------------------------
    orgTable('rules', [
      req('title', 'text'),
      f('content', 'text'),
      f('kind', 'text'),
      f('severity', 'text'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('slug', 'text'),
      f('verification', 'text'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
      f('trigger_concept', 'vector(768)'),
    ]),

    // -- Memories -------------------------------------------------------------
    orgTable('memories', [
      req('content', 'text'),
      f('memory_type', 'text'),
      f('memory_category', 'text'),
      f('agent_id', 'uuid'),
      f('importance', 'int'),
      f('verified', 'bool', { default_value: 'false' }),
      f('source', 'text'),
      f('abstract', 'text'),
      f('overview', 'text'),
      f('active_count', 'int', { default_value: '0' }),
      f('last_accessed_at', 'timestamptz'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Skills ---------------------------------------------------------------
    orgTable('skills', [
      req('name', 'text'),
      f('slug', 'text'),
      f('description', 'text'),
      f('content', 'text'),
      f('procedure', 'text'),
      f('interface', 'jsonb'),
      f('requirements', 'jsonb'),
      f('prerequisites', 'jsonb'),
      f('always_load', 'bool', { default_value: 'false' }),
      f('file_path', 'text'),
      f('content_hash', 'text'),
      f('category', 'text'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('abstract', 'text'),
      f('overview', 'text'),
      f('active_count', 'int', { default_value: '0' }),
      f('last_accessed_at', 'timestamptz'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
      f('intent_trigger', 'vector(768)'),
    ]),

    // -- Goals ----------------------------------------------------------------
    orgTable('goals', [
      req('title', 'text'),
      f('description', 'text'),
      f('target_date', 'timestamptz'),
      f('status', 'text', { default_value: "'active'" }),
      f('category', 'text'),
      f('progress_pct', 'int', { default_value: '0' }),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Prompts --------------------------------------------------------------
    orgTable('prompts', [
      req('name', 'text'),
      req('content', 'text'),
      f('type', 'text'),
      f('model', 'text'),
      f('version', 'int', { default_value: '1' }),
      f('is_active', 'bool', { default_value: 'true' }),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Chunk tables ---------------------------------------------------------
    chunkTable('tasks'),
    chunkTable('rules'),
    chunkTable('memories'),
    chunkTable('skills'),
    chunkTable('goals'),
    chunkTable('prompts'),

    // -- Skill Executions -----------------------------------------------------
    orgTable('skill_executions', [
      req('skill_id', 'uuid'),
      f('agent_id', 'uuid'),
      f('session_id', 'uuid'),
      f('status', 'text', { default_value: "'pending'" }),
      f('started_at', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('duration_ms', 'int'),
      f('input', 'jsonb'),
      f('output', 'jsonb'),
      f('error', 'text'),
    ]),
  ],

  relations: [
    // tasks self-referential (parent)
    { $type: 'RelationBelongsTo', source_ref: 'tasks', target_ref: 'tasks', field_name: 'parent_task_id', source_field_name: 'parent_task_id', target_field_name: 'id', delete_action: 'n', is_required: false },

    // Chunk table relations (parent -> chunks, CASCADE delete)
    hasManyChunks('tasks'),
    hasManyChunks('rules'),
    hasManyChunks('memories'),
    hasManyChunks('skills'),
    hasManyChunks('goals'),
    hasManyChunks('prompts'),

    // NOTE: memories -> agents FK is created in cross-relations.ts
    // NOTE: tasks -> projects, tasks -> agents cross-module relations are in cross-relations.ts
  ],
};

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  await provisionBlueprint(definition, 'Agent Core Schema');
}

export { main as default };
