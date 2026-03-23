/**
 * agent.ts - Agent Core schema (blueprint definition)
 *
 * Data* nodes: DataSearch, DataEmbedding (secondary vectors on rules/skills)
 */

import {
  type BlueprintDefinition,
  orgTable,
  provisionBlueprint,
  f,
  req,
  M2M_JUNCTION_OPTS,
  dataSearch,
  dataEmbedding,
  btreeIndex,
  ginIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Agents -------------------------------------------------------------
    orgTable('agents', [
      req('name', 'text'),
      f('description', 'text'),
      f('system_prompt', 'text'),
      f('model', 'text', { default_value: "'gpt-4'" }),
      f('temperature', 'numeric', { default_value: '0.7' }),
      f('status', 'text', { default_value: "'active'" }),
      f('config', 'jsonb'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'system_prompt'],
          chunks: true,
        }),
      ]),

    // -- Agent Tasks --------------------------------------------------------
    orgTable('agent_tasks', [
      req('agent_id', 'uuid'),
      req('title', 'text'),
      f('description', 'text'),
      f('status', 'text', { default_value: "'pending'" }),
      f('priority', 'int', { default_value: '0' }),
      f('result', 'text'),
      f('started_at', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('meta', 'jsonb'),
    ], [
        dataSearch({
          embedding_source_fields: ['title', 'description', 'result'],
          chunks: true,
        }),
      ]),

    // -- Agent Logs ---------------------------------------------------------
    orgTable('agent_logs', [
      req('agent_id', 'uuid'),
      req('level', 'text'),
      req('message', 'text'),
      f('context', 'jsonb'),
      f('task_id', 'uuid'),
    ], [
        dataSearch({
          embedding_source_fields: ['message'],
          chunks: true,
        }),
      ]),

    // -- Rules --------------------------------------------------------------
    orgTable('rules', [
      req('name', 'text'),
      f('description', 'text'),
      f('trigger_type', 'text'),
      f('trigger_config', 'jsonb'),
      f('action_type', 'text'),
      f('action_config', 'jsonb'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('priority', 'int', { default_value: '0' }),
      f('trigger_concept', 'text'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'trigger_concept'],
          chunks: true,
        }),
        dataEmbedding({ field_name: 'trigger_concept_embedding', source_fields: ['trigger_concept'] }),
      ]),

    // -- Skills -------------------------------------------------------------
    orgTable('skills', [
      req('name', 'text'),
      f('description', 'text'),
      f('category', 'text'),
      f('implementation', 'text'),
      f('config', 'jsonb'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('intent_trigger', 'text'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'intent_trigger'],
          chunks: true,
        }),
        dataEmbedding({ field_name: 'intent_trigger_embedding', source_fields: ['intent_trigger'] }),
      ]),

  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'agent_tasks', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'agent_logs',  delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'rules',       delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'skills',      delete_action: 'c' },

    { $type: 'RelationManyToMany', source_ref: 'agents', target_ref: 'agents', junction_table_name: 'agent_collaborators', source_field_name: 'agent_id', target_field_name: 'collaborator_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],

  indexes: [
    ginIndex('agents', 'tags'),
    ginIndex('agents', 'config'),
    btreeIndex('agents', 'status'),
    // btreeIndex('agent_tasks', 'agent_id'), — auto-created by FK (agents → agent_tasks)
    btreeIndex('agent_tasks', 'status'),
    btreeIndex('agent_tasks', 'priority'),
    // btreeIndex('agent_logs', 'agent_id'), — auto-created by FK (agents → agent_logs)
    btreeIndex('agent_logs', 'level'),
    btreeIndex('agent_logs', 'task_id'),
    btreeIndex('rules', 'trigger_type'),
    btreeIndex('rules', 'is_active'),
    btreeIndex('skills', 'category'),
    btreeIndex('skills', 'is_active'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Agent Core Schema');
}

export { main as default };
