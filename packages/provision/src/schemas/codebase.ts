/**
 * codebase.ts - Codebase schema (blueprint definition)
 *
 * Data* nodes: DataSearch
 */

import {
  type BlueprintDefinition,
  orgTable,
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
    orgTable('codebases', [
      req('name', 'text'),
      f('description', 'text'),
      f('repository_url', 'text'),
      f('default_branch', 'text', { default_value: "'main'" }),
      f('language', 'text'),
      f('framework', 'text'),
      f('last_synced_at', 'timestamptz'),
      f('config', 'jsonb'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description'],
          chunks: true,
        }),
      ]),

    orgTable('code_chunks', [
      req('codebase_id', 'uuid'),
      req('file_path', 'text'),
      f('chunk_index', 'int'),
      req('content', 'text'),
      f('language', 'text'),
      f('start_line', 'int'),
      f('end_line', 'int'),
      f('symbol_name', 'text'),
      f('symbol_type', 'text'),
    ], [
        dataSearch({
          embedding_source_fields: ['content', 'file_path', 'symbol_name'],
        }),
      ]),
  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'codebases', target_ref: 'code_chunks', delete_action: 'c' },

    { $type: 'RelationManyToMany', source_ref: 'codebases', target_ref: 'codebases', junction_table_name: 'codebase_dependencies', source_field_name: 'codebase_id', target_field_name: 'dependency_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],

  indexes: [
    ginIndex('codebases', 'tags'),
    ginIndex('codebases', 'config'),
    btreeIndex('codebases', 'language'),
    btreeIndex('codebases', 'framework'),
    // btreeIndex('code_chunks', 'codebase_id'), — auto-created by FK (codebases → code_chunks)
    btreeIndex('code_chunks', 'file_path'),
    btreeIndex('code_chunks', 'symbol_type'),
    btreeIndex('code_chunks', 'language'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Codebase Schema');
}

export { main as default };
