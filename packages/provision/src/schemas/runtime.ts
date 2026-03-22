/**
 * runtime.ts - Runtime schema (blueprint definition)
 *
 * Data* nodes: DataSearch
 */

import {
  type BlueprintDefinition,
  orgTable,
  chunkTable,
  hasManyChunks,
  provisionBlueprint,
  f,
  req,
  M2M_JUNCTION_OPTS,
  dataSearch,
  btreeIndex,
  ginIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Runtime States -----------------------------------------------------
    orgTable('runtime_states', [
      req('name', 'text'),
      f('state_type', 'text'),
      f('status', 'text', { default_value: "'active'" }),
      f('data', 'jsonb'),
      f('parent_id', 'uuid'),
      f('started_at', 'timestamptz'),
      f('ended_at', 'timestamptz'),
      f('embedding_text', 'text'),
    ], {
      data_nodes: [
        dataSearch({
          embedding_source_fields: ['name', 'state_type'],
        }),
      ],
    }),

    // -- Runtime Logs -------------------------------------------------------
    orgTable('runtime_logs', [
      req('runtime_state_id', 'uuid'),
      req('level', 'text'),
      req('message', 'text'),
      f('context', 'jsonb'),
      f('step_index', 'int'),
      f('embedding_text', 'text'),
    ], {
      data_nodes: [
        dataSearch({
          embedding_source_fields: ['message'],
        }),
      ],
    }),

    // -- Runtime Artifacts ---------------------------------------------------
    orgTable('runtime_artifacts', [
      req('runtime_state_id', 'uuid'),
      req('name', 'text'),
      f('artifact_type', 'text'),
      f('content', 'text'),
      f('meta', 'jsonb'),
      f('size_bytes', 'int'),
    ]),

    // -- Runtime Metrics ----------------------------------------------------
    orgTable('runtime_metrics', [
      req('runtime_state_id', 'uuid'),
      req('metric_name', 'text'),
      req('metric_value', 'numeric'),
      f('unit', 'text'),
      f('meta', 'jsonb'),
    ]),

    // -- Runtime Schedules --------------------------------------------------
    orgTable('runtime_schedules', [
      req('name', 'text'),
      f('cron_expression', 'text'),
      f('next_run_at', 'timestamptz'),
      f('last_run_at', 'timestamptz'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('config', 'jsonb'),
      f('timezone', 'text', { default_value: "'UTC'" }),
    ]),

    // -- Runtime Events -----------------------------------------------------
    orgTable('runtime_events', [
      req('event_type', 'text'),
      req('payload', 'jsonb'),
      f('source', 'text'),
      f('processed_at', 'timestamptz'),
      f('status', 'text', { default_value: "'pending'" }),
    ]),

    // -- Runtime Config -----------------------------------------------------
    orgTable('runtime_config', [
      req('key', 'text'),
      f('value', 'jsonb'),
      f('description', 'text'),
      f('is_secret', 'bool', { default_value: 'false' }),
    ]),

    // -- Chunk tables -------------------------------------------------------
    chunkTable('runtime_states'),
    chunkTable('runtime_logs'),

    // -- Conversations & Messages -------------------------------------------
    orgTable('conversations', [
      req('title', 'text'),
      f('agent_id', 'uuid'),
      f('status', 'text', { default_value: "'active'" }),
      f('meta', 'jsonb'),
      f('embedding_text', 'text'),
    ], {
      data_nodes: [
        dataSearch({
          embedding_source_fields: ['title'],
        }),
      ],
    }),

    orgTable('messages', [
      req('conversation_id', 'uuid'),
      req('role', 'text'),
      req('content', 'text'),
      f('token_count', 'int'),
      f('meta', 'jsonb'),
      f('tool_calls', 'jsonb'),
      f('tool_results', 'jsonb'),
      f('embedding_text', 'text'),
    ], {
      data_nodes: [
        dataSearch({
          embedding_source_fields: ['content'],
        }),
      ],
    }),

    chunkTable('conversations'),
    chunkTable('messages'),

    // -- Tool Definitions & Executions --------------------------------------
    orgTable('tool_definitions', [
      req('name', 'text'),
      f('description', 'text'),
      f('input_schema', 'jsonb'),
      f('output_schema', 'jsonb'),
      f('implementation', 'text'),
      f('is_active', 'bool', { default_value: 'true' }),
    ]),

    orgTable('tool_executions', [
      req('tool_definition_id', 'uuid'),
      f('message_id', 'uuid'),
      f('input', 'jsonb'),
      f('output', 'jsonb'),
      f('status', 'text', { default_value: "'pending'" }),
      f('started_at', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('error', 'text'),
    ]),
  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'runtime_states', target_ref: 'runtime_logs',      delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'runtime_states', target_ref: 'runtime_artifacts',  delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'runtime_states', target_ref: 'runtime_metrics',    delete_action: 'c' },

    hasManyChunks('runtime_states'),
    hasManyChunks('runtime_logs'),
    hasManyChunks('conversations'),
    hasManyChunks('messages'),

    { $type: 'RelationHasMany', source_ref: 'conversations',    target_ref: 'messages',         delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'tool_definitions', target_ref: 'tool_executions',  delete_action: 'c' },

    { $type: 'RelationManyToMany', source_ref: 'runtime_states', target_ref: 'runtime_states', junction_table_name: 'runtime_state_dependencies', source_field_name: 'state_id', target_field_name: 'dependency_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],

  indexes: [
    ginIndex('runtime_states', 'data'),
    btreeIndex('runtime_states', 'state_type'),
    btreeIndex('runtime_states', 'status'),
    btreeIndex('runtime_states', 'parent_id'),
    btreeIndex('runtime_logs', 'runtime_state_id'),
    btreeIndex('runtime_logs', 'level'),
    btreeIndex('runtime_artifacts', 'runtime_state_id'),
    btreeIndex('runtime_artifacts', 'artifact_type'),
    btreeIndex('runtime_metrics', 'runtime_state_id'),
    btreeIndex('runtime_metrics', 'metric_name'),
    btreeIndex('runtime_schedules', 'is_active'),
    btreeIndex('runtime_schedules', 'next_run_at'),
    btreeIndex('runtime_events', 'event_type'),
    btreeIndex('runtime_events', 'status'),
    btreeIndex('runtime_config', 'key'),
    btreeIndex('conversations', 'agent_id'),
    btreeIndex('conversations', 'status'),
    btreeIndex('messages', 'conversation_id'),
    btreeIndex('messages', 'role'),
    btreeIndex('tool_definitions', 'name'),
    btreeIndex('tool_definitions', 'is_active'),
    btreeIndex('tool_executions', 'tool_definition_id'),
    btreeIndex('tool_executions', 'message_id'),
    btreeIndex('tool_executions', 'status'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Runtime Schema');
}

export { main as default };
