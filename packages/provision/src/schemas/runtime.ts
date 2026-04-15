/**
 * runtime.ts - Runtime schema (blueprint definition)
 *
 * Data* nodes: DataSearch
 */

import {
  type BlueprintDefinition,
  ORG_NODES,
  CRUD_GRANTS,
  M2M_JUNCTION_OPTS,
  provisionBlueprint,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Runtime States -----------------------------------------------------
    {
      ref: 'runtime_states',
      table_name: 'runtime_states',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'state_type'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'state_type', type: 'text' },
        { name: 'status', type: 'text', default_value: "'active'" },
        { name: 'data', type: 'jsonb' },
        { name: 'parent_id', type: 'uuid' },
        { name: 'started_at', type: 'timestamptz' },
        { name: 'ended_at', type: 'timestamptz' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Runtime Logs -------------------------------------------------------
    {
      ref: 'runtime_logs',
      table_name: 'runtime_logs',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['message'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'runtime_state_id', type: 'uuid', is_required: true },
        { name: 'level', type: 'text', is_required: true },
        { name: 'message', type: 'text', is_required: true },
        { name: 'context', type: 'jsonb' },
        { name: 'step_index', type: 'int' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Runtime Artifacts ---------------------------------------------------
    {
      ref: 'runtime_artifacts',
      table_name: 'runtime_artifacts',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'runtime_state_id', type: 'uuid', is_required: true },
        { name: 'name', type: 'text', is_required: true },
        { name: 'artifact_type', type: 'text' },
        { name: 'content', type: 'text' },
        { name: 'meta', type: 'jsonb' },
        { name: 'size_bytes', type: 'int' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Runtime Metrics ----------------------------------------------------
    {
      ref: 'runtime_metrics',
      table_name: 'runtime_metrics',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'runtime_state_id', type: 'uuid', is_required: true },
        { name: 'metric_name', type: 'text', is_required: true },
        { name: 'metric_value', type: 'numeric', is_required: true },
        { name: 'unit', type: 'text' },
        { name: 'meta', type: 'jsonb' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Runtime Schedules --------------------------------------------------
    {
      ref: 'runtime_schedules',
      table_name: 'runtime_schedules',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'cron_expression', type: 'text' },
        { name: 'next_run_at', type: 'timestamptz' },
        { name: 'last_run_at', type: 'timestamptz' },
        { name: 'is_active', type: 'bool', default_value: 'true' },
        { name: 'config', type: 'jsonb' },
        { name: 'timezone', type: 'text', default_value: "'UTC'" },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Runtime Events -----------------------------------------------------
    {
      ref: 'runtime_events',
      table_name: 'runtime_events',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'event_type', type: 'text', is_required: true },
        { name: 'payload', type: 'jsonb', is_required: true },
        { name: 'source', type: 'text' },
        { name: 'processed_at', type: 'timestamptz' },
        { name: 'status', type: 'text', default_value: "'pending'" },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Runtime Config -----------------------------------------------------
    {
      ref: 'runtime_config',
      table_name: 'runtime_config',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'key', type: 'text', is_required: true },
        { name: 'value', type: 'jsonb' },
        { name: 'description', type: 'text' },
        { name: 'is_secret', type: 'bool', default_value: 'false' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Conversations & Messages -------------------------------------------
    {
      ref: 'conversations',
      table_name: 'conversations',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['title'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'title', type: 'text', is_required: true },
        { name: 'agent_id', type: 'uuid' },
        { name: 'status', type: 'text', default_value: "'active'" },
        { name: 'meta', type: 'jsonb' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    {
      ref: 'messages',
      table_name: 'messages',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['content'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'conversation_id', type: 'uuid', is_required: true },
        { name: 'role', type: 'text', is_required: true },
        { name: 'content', type: 'text', is_required: true },
        { name: 'token_count', type: 'int' },
        { name: 'meta', type: 'jsonb' },
        { name: 'tool_calls', type: 'jsonb' },
        { name: 'tool_results', type: 'jsonb' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

    // -- Tool Executions (tool_definitions lives in agent.ts) ----------------
    {
      ref: 'tool_executions',
      table_name: 'tool_executions',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'tool_definition_id', type: 'uuid', is_required: true },
        { name: 'message_id', type: 'uuid' },
        { name: 'input', type: 'jsonb' },
        { name: 'output', type: 'jsonb' },
        { name: 'status', type: 'text', default_value: "'pending'" },
        { name: 'started_at', type: 'timestamptz' },
        { name: 'completed_at', type: 'timestamptz' },
        { name: 'error', type: 'text' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'runtime_states', target_ref: 'runtime_logs',      delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'runtime_states', target_ref: 'runtime_artifacts',  delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'runtime_states', target_ref: 'runtime_metrics',    delete_action: 'c' },

    { $type: 'RelationHasMany', source_ref: 'conversations',    target_ref: 'messages',         delete_action: 'c' },
    // tool_definitions -> tool_executions FK handled in cross-relations.ts

    { $type: 'RelationManyToMany', source_ref: 'runtime_states', target_ref: 'runtime_states', junction_table_name: 'runtime_state_dependencies', source_field_name: 'state_id', target_field_name: 'dependency_id', ...M2M_JUNCTION_OPTS },
  ],

  indexes: [
    { table_ref: 'runtime_states', column: 'data', access_method: 'gin' },
    { table_ref: 'runtime_states', column: 'state_type', access_method: 'btree' },
    { table_ref: 'runtime_states', column: 'status', access_method: 'btree' },
    { table_ref: 'runtime_states', column: 'parent_id', access_method: 'btree' },
    // runtime_logs.runtime_state_id btree — auto-created by FK
    { table_ref: 'runtime_logs', column: 'level', access_method: 'btree' },
    // runtime_artifacts.runtime_state_id btree — auto-created by FK
    { table_ref: 'runtime_artifacts', column: 'artifact_type', access_method: 'btree' },
    // runtime_metrics.runtime_state_id btree — auto-created by FK
    { table_ref: 'runtime_metrics', column: 'metric_name', access_method: 'btree' },
    { table_ref: 'runtime_schedules', column: 'is_active', access_method: 'btree' },
    { table_ref: 'runtime_schedules', column: 'next_run_at', access_method: 'btree' },
    { table_ref: 'runtime_events', column: 'event_type', access_method: 'btree' },
    { table_ref: 'runtime_events', column: 'status', access_method: 'btree' },
    { table_ref: 'runtime_config', column: 'key', access_method: 'btree' },
    { table_ref: 'conversations', column: 'agent_id', access_method: 'btree' },
    { table_ref: 'conversations', column: 'status', access_method: 'btree' },
    // messages.conversation_id btree — auto-created by FK
    { table_ref: 'messages', column: 'role', access_method: 'btree' },
    // tool_executions.tool_definition_id btree — auto-created by FK (cross-relations)
    { table_ref: 'tool_executions', column: 'message_id', access_method: 'btree' },
    { table_ref: 'tool_executions', column: 'status', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Runtime Schema');
}

export { main as default };
