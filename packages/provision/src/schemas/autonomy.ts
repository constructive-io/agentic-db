/**
 * autonomy.ts - Autonomy schema (blueprint definition)
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
    orgTable('autonomy_records', [
      req('title', 'text'),
      f('record_type', 'text'),
      f('content', 'text'),
      f('status', 'text', { default_value: "'active'" }),
      f('priority', 'int', { default_value: '0' }),
      f('source', 'text'),
      f('context', 'jsonb'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['title', 'content'],
        }),
      ]),

    chunkTable('autonomy_records'),
  ],

  relations: [
    hasManyChunks('autonomy_records'),

    { $type: 'RelationManyToMany', source_ref: 'autonomy_records', target_ref: 'autonomy_records', junction_table_name: 'autonomy_record_links', source_field_name: 'source_record_id', target_field_name: 'target_record_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],

  indexes: [
    ginIndex('autonomy_records', 'tags'),
    ginIndex('autonomy_records', 'context'),
    btreeIndex('autonomy_records', 'record_type'),
    btreeIndex('autonomy_records', 'status'),
    btreeIndex('autonomy_records', 'priority'),
    btreeIndex('autonomy_records', 'source'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Autonomy Schema');
}

export { main as default };
