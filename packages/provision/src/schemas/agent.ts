/**
 * agent.ts - Agent Core schema (blueprint definition)
 *
 * Tables: agents, tasks, agent_logs, rules, skills, tool_definitions, prompts, expenses
 * Data* nodes: DataSearch (embedding + BM25 + chunks), DataEmbedding (secondary vectors)
 */

import {
  type BlueprintDefinition,
  ORG_NODES,
  M2M_JUNCTION_OPTS,
  provisionBlueprint,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Agents -------------------------------------------------------------
    {
      ref: 'agents',
      table_name: 'agents',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description', 'system_prompt'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'system_prompt', type: 'text' },
        { name: 'model', type: 'text', default_value: "'gpt-4'" },
        { name: 'temperature', type: 'numeric', default_value: '0.7' },
        { name: 'status', type: 'text', default_value: "'active'" },
        { name: 'config', type: 'jsonb' },
        { name: 'tags', type: 'citext[]' },
      ],
    },

    // -- Tasks --------------------------------------------------------------
    {
      ref: 'tasks',
      table_name: 'tasks',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['title', 'description', 'result'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'agent_id', type: 'uuid' },
        { name: 'title', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'status', type: 'text', default_value: "'pending'" },
        { name: 'priority', type: 'int', default_value: '0' },
        { name: 'result', type: 'text' },
        { name: 'started_at', type: 'timestamptz' },
        { name: 'completed_at', type: 'timestamptz' },
        { name: 'meta', type: 'jsonb' },
      ],
    },

    // -- Agent Logs ---------------------------------------------------------
    {
      ref: 'agent_logs',
      table_name: 'agent_logs',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['message'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'agent_id', type: 'uuid' },
        { name: 'level', type: 'text', is_required: true },
        { name: 'message', type: 'text', is_required: true },
        { name: 'context', type: 'jsonb' },
        { name: 'task_id', type: 'uuid' },
      ],
    },

    // -- Rules --------------------------------------------------------------
    {
      ref: 'rules',
      table_name: 'rules',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description', 'trigger_concept'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
        { $type: 'DataEmbedding', data: { field_name: 'trigger_concept_embedding', source_fields: ['trigger_concept'], enqueue_job: false } },
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'trigger_type', type: 'text' },
        { name: 'trigger_config', type: 'jsonb' },
        { name: 'action_type', type: 'text' },
        { name: 'action_config', type: 'jsonb' },
        { name: 'is_active', type: 'bool', default_value: 'true' },
        { name: 'priority', type: 'int', default_value: '0' },
        { name: 'trigger_concept', type: 'text' },
      ],
    },

    // -- Skills -------------------------------------------------------------
    {
      ref: 'skills',
      table_name: 'skills',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description', 'intent_trigger'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
        { $type: 'DataEmbedding', data: { field_name: 'intent_trigger_embedding', source_fields: ['intent_trigger'], enqueue_job: false } },
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'category', type: 'text' },
        { name: 'implementation', type: 'text' },
        { name: 'config', type: 'jsonb' },
        { name: 'is_active', type: 'bool', default_value: 'true' },
        { name: 'intent_trigger', type: 'text' },
      ],
    },

    // -- Tool Definitions ---------------------------------------------------
    {
      ref: 'tool_definitions',
      table_name: 'tool_definitions',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'tool_type', type: 'text' },
        { name: 'schema', type: 'jsonb' },
        { name: 'config', type: 'jsonb' },
        { name: 'is_active', type: 'bool', default_value: 'true' },
      ],
    },

    // -- Prompts ------------------------------------------------------------
    {
      ref: 'prompts',
      table_name: 'prompts',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'content'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'content', type: 'text', is_required: true },
        { name: 'category', type: 'text' },
        { name: 'version', type: 'int', default_value: '1' },
        { name: 'is_active', type: 'bool', default_value: 'true' },
        { name: 'tags', type: 'citext[]' },
      ],
    },

    // -- Expenses -----------------------------------------------------------
    {
      ref: 'expenses',
      table_name: 'expenses',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['description', 'notes'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'description', type: 'text' },
        { name: 'amount', type: 'numeric' },
        { name: 'currency', type: 'text', default_value: "'USD'" },
        { name: 'category', type: 'text' },
        { name: 'occurred_at', type: 'timestamptz' },
        { name: 'vendor', type: 'text' },
        { name: 'notes', type: 'text' },
        { name: 'tags', type: 'citext[]' },
      ],
    },

  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'tasks', delete_action: 'n' },
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'agent_logs', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'rules', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'agents', target_ref: 'skills', delete_action: 'c' },
    { $type: 'RelationManyToMany', source_ref: 'agents', target_ref: 'agents', junction_table_name: 'agent_collaborators', source_field_name: 'agent_id', target_field_name: 'collaborator_id', ...M2M_JUNCTION_OPTS },
  ],

  indexes: [
    { table_ref: 'agents', column: 'tags', access_method: 'gin' },
    { table_ref: 'agents', column: 'config', access_method: 'gin' },
    { table_ref: 'agents', column: 'status', access_method: 'btree' },
    // btree on tasks.agent_id -- auto-created by FK (agents -> tasks)
    { table_ref: 'tasks', column: 'status', access_method: 'btree' },
    { table_ref: 'tasks', column: 'priority', access_method: 'btree' },
    // btree on agent_logs.agent_id -- auto-created by FK (agents -> agent_logs)
    { table_ref: 'agent_logs', column: 'level', access_method: 'btree' },
    { table_ref: 'agent_logs', column: 'task_id', access_method: 'btree' },
    { table_ref: 'rules', column: 'trigger_type', access_method: 'btree' },
    { table_ref: 'rules', column: 'is_active', access_method: 'btree' },
    { table_ref: 'skills', column: 'category', access_method: 'btree' },
    { table_ref: 'skills', column: 'is_active', access_method: 'btree' },
    { table_ref: 'tool_definitions', column: 'tool_type', access_method: 'btree' },
    { table_ref: 'tool_definitions', column: 'is_active', access_method: 'btree' },
    { table_ref: 'prompts', column: 'category', access_method: 'btree' },
    { table_ref: 'prompts', column: 'is_active', access_method: 'btree' },
    { table_ref: 'prompts', column: 'tags', access_method: 'gin' },
    { table_ref: 'expenses', column: 'category', access_method: 'btree' },
    { table_ref: 'expenses', column: 'occurred_at', access_method: 'btree' },
    { table_ref: 'expenses', column: 'tags', access_method: 'gin' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Agent Core Schema');
}

export { main as default };
