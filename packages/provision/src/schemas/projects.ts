/**
 * projects.ts - Projects schema (blueprint definition)
 *
 * Data* nodes: DataSearch
 */

import {
  type BlueprintDefinition,
  ORG_NODES,
  CRUD_GRANTS,
  provisionBlueprint,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    {
      ref: 'projects',
      table_name: 'projects',
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
        { name: 'status', type: 'text', default_value: "'active'" },
        { name: 'project_type', type: 'text' },
        { name: 'priority', type: 'int', default_value: '0' },
        { name: 'started_at', type: 'timestamptz' },
        { name: 'target_date', type: 'timestamptz' },
        { name: 'completed_at', type: 'timestamptz' },
        { name: 'config', type: 'jsonb' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
    },

  ],

  relations: [
  ],

  indexes: [
    { table_ref: 'projects', column: 'tags', access_method: 'gin' },
    { table_ref: 'projects', column: 'config', access_method: 'gin' },
    { table_ref: 'projects', column: 'status', access_method: 'btree' },
    { table_ref: 'projects', column: 'project_type', access_method: 'btree' },
    { table_ref: 'projects', column: 'priority', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Projects Schema');
}

export { main as default };
