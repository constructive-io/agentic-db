/**
 * codebase.ts - Codebase schema (blueprint definition)
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
      ref: 'codebases',
      table_name: 'codebases',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description'] },
          bm25: { field_name: 'embedding_text' },
        chunks: {},
        }},
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'repository_url', type: 'text' },
        { name: 'default_branch', type: 'text', default_value: "'main'" },
        { name: 'language', type: 'text' },
        { name: 'framework', type: 'text' },
        { name: 'last_synced_at', type: 'timestamptz' },
        { name: 'config', type: 'jsonb' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    {
      ref: 'code_chunks',
      table_name: 'code_chunks',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['content', 'file_path', 'symbol_name'] },
          bm25: { field_name: 'embedding_text' },
        chunks: {},
        }},
      ],
      fields: [
        { name: 'codebase_id', type: 'uuid', is_required: true },
        { name: 'file_path', type: 'text', is_required: true },
        { name: 'chunk_index', type: 'int' },
        { name: 'content', type: 'text', is_required: true },
        { name: 'language', type: 'text' },
        { name: 'start_line', type: 'int' },
        { name: 'end_line', type: 'int' },
        { name: 'symbol_name', type: 'text' },
        { name: 'symbol_type', type: 'text' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'codebases', target_ref: 'code_chunks', delete_action: 'c' },
    { $type: 'RelationManyToMany', source_ref: 'codebases', target_ref: 'codebases', junction_table_name: 'codebase_dependencies', source_field_name: 'codebase_id', target_field_name: 'dependency_id', ...M2M_JUNCTION_OPTS },
  ],

  indexes: [
    { table_ref: 'codebases', column: 'tags', access_method: 'gin' },
    { table_ref: 'codebases', column: 'config', access_method: 'gin' },
    { table_ref: 'codebases', column: 'language', access_method: 'btree' },
    { table_ref: 'codebases', column: 'framework', access_method: 'btree' },
    // code_chunks.codebase_id btree — auto-created by FK
    { table_ref: 'code_chunks', column: 'file_path', access_method: 'btree' },
    { table_ref: 'code_chunks', column: 'symbol_type', access_method: 'btree' },
    { table_ref: 'code_chunks', column: 'language', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Codebase Schema');
}

export { main as default };
