/**
 * projects.ts - Projects schema (blueprint definition)
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
  dataSearch,
  btreeIndex,
  ginIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    orgTable('projects', [
      req('name', 'text'),
      f('description', 'text'),
      f('status', 'text', { default_value: "'active'" }),
      f('project_type', 'text'),
      f('priority', 'int', { default_value: '0' }),
      f('started_at', 'timestamptz'),
      f('target_date', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('config', 'jsonb'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description'],
        }),
      ]),

    chunkTable('projects'),
  ],

  relations: [
    hasManyChunks('projects'),
  ],

  indexes: [
    ginIndex('projects', 'tags'),
    ginIndex('projects', 'config'),
    btreeIndex('projects', 'status'),
    btreeIndex('projects', 'project_type'),
    btreeIndex('projects', 'priority'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Projects Schema');
}

export { main as default };
