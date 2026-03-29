/**
 * autonomy.ts - Autonomy schema (blueprint definition)
 *
 * Data* nodes: DataSearch
 */

import {
  type BlueprintDefinition,
  ORG_NODES,
  ORG_POLICY,
  CRUD_GRANTS,
  M2M_JUNCTION_OPTS,
  provisionBlueprint,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    {
      ref: 'autonomy_records',
      table_name: 'autonomy_records',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['title', 'content'] },
          bm25: { field_name: 'embedding_text' },
        chunks: {},
        }},
      ],
      fields: [
        { name: 'title', type: 'text', is_required: true },
        { name: 'record_type', type: 'text' },
        { name: 'content', type: 'text' },
        { name: 'status', type: 'text', default_value: "'active'" },
        { name: 'priority', type: 'int', default_value: '0' },
        { name: 'source', type: 'text' },
        { name: 'context', type: 'jsonb' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
  ],

  relations: [
    { $type: 'RelationManyToMany', source_ref: 'autonomy_records', target_ref: 'autonomy_records', junction_table_name: 'autonomy_record_links', source_field_name: 'source_record_id', target_field_name: 'target_record_id', ...M2M_JUNCTION_OPTS },
  ],

  indexes: [
    { table_ref: 'autonomy_records', column: 'tags', access_method: 'gin' },
    { table_ref: 'autonomy_records', column: 'context', access_method: 'gin' },
    { table_ref: 'autonomy_records', column: 'record_type', access_method: 'btree' },
    { table_ref: 'autonomy_records', column: 'status', access_method: 'btree' },
    { table_ref: 'autonomy_records', column: 'priority', access_method: 'btree' },
    { table_ref: 'autonomy_records', column: 'source', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Autonomy Schema');
}

export { main as default };
