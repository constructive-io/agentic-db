/**
 * projects.ts — Projects domain schema (blueprint definition)
 *
 * Tables: projects, milestones
 * Chunk tables: project_chunks
 * Relations: projects->milestones (HasMany)
 * Note: projects<->contacts M:N is in cross-relations.ts
 */

import {
  type BlueprintDefinition,
  orgTable,
  chunkTable,
  hasManyChunks,
  provisionBlueprint,
  f,
  req,
  EMBEDDING_FIELDS,
  // Index helpers
  embeddingIndexes,
  chunkIndexes,
  btreeIndex,
  ginIndex,
  trgmIndex,
} from '../blueprint';

// ---------------------------------------------------------------------------
// Blueprint definition
// ---------------------------------------------------------------------------

const definition: BlueprintDefinition = {
  tables: [
    // -- Projects -------------------------------------------------------------
    orgTable('projects', [
      req('name', 'text'),
      f('description', 'text'),
      f('status', 'text', { default_value: "'active'" }),
      f('start_date', 'timestamptz'),
      f('due_date', 'timestamptz'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
      f('search_tsv', 'tsvector'),
    ]),

    // -- Milestones -----------------------------------------------------------
    orgTable('milestones', [
      f('project_id', 'uuid'),
      req('name', 'text'),
      f('due_date', 'timestamptz'),
      f('status', 'text', { default_value: "'pending'" }),
    ]),

    // -- Chunk tables ---------------------------------------------------------
    chunkTable('projects'),
  ],

  relations: [
    // projects -> milestones (HasMany)
    { $type: 'RelationHasMany', source_ref: 'projects', target_ref: 'milestones', delete_action: 'c' },

    // projects -> project_chunks (HasMany, CASCADE delete)
    hasManyChunks('projects'),
  ],

  // -- Phase 3: Indexes -----------------------------------------------------
  indexes: [
    // Embedding indexes (HNSW + BM25)
    ...embeddingIndexes('projects'),

    // Chunk table indexes
    ...chunkIndexes('projects'),

    // GIN on tags + tsvector
    ginIndex('projects', 'tags'),
    ginIndex('projects', 'search_tsv'),

    // Trigram for fuzzy matching
    trgmIndex('projects', 'name'),

    // B-tree indexes
    btreeIndex('projects', 'status'),
    btreeIndex('projects', 'start_date'),
    btreeIndex('projects', 'due_date'),
    btreeIndex('milestones', 'project_id'),
    btreeIndex('milestones', 'due_date'),
    btreeIndex('milestones', 'status'),
  ],

  // -- Phase 4: Full-text search configurations -----------------------------
  full_text_searches: [
    {
      table_ref: 'projects',
      field_name: 'search_tsv',
      sources: [
        { field: 'name', weight: 'A' },
        { field: 'description', weight: 'B' },
      ],
    },
  ],
};

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  await provisionBlueprint(definition, 'Projects Schema');
}

export { main as default };
