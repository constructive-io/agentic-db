/**
 * codebase.ts — Codebase domain schema (blueprint definition)
 *
 * Tables: repositories, files, chunks
 * Chunk tables: repository_chunks
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
    // -- Repositories ---------------------------------------------------------
    orgTable('repositories', [
      req('name', 'text'),
      f('url', 'text'),
      f('description', 'text'),
      f('default_branch', 'text'),
      f('last_synced_at', 'timestamptz'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Files ----------------------------------------------------------------
    orgTable('files', [
      f('repository_id', 'uuid'),
      req('path', 'text'),
      f('language', 'text'),
      f('hash', 'text'),
    ]),

    // -- Chunks (file code chunks) --------------------------------------------
    orgTable('chunks', [
      f('file_id', 'uuid'),
      f('repository_id', 'uuid'),
      req('content', 'text'),
      f('start_line', 'int'),
      f('end_line', 'int'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Chunk tables ---------------------------------------------------------
    chunkTable('repositories'),
  ],

  relations: [
    // repos -> files (HasMany)
    { $type: 'RelationHasMany', source_ref: 'repositories', target_ref: 'files',  delete_action: 'c' },
    // files -> chunks (HasMany)
    { $type: 'RelationHasMany', source_ref: 'files',        target_ref: 'chunks', delete_action: 'c' },
    // repos -> chunks (HasMany, shortcut for direct repo->chunk queries)
    { $type: 'RelationHasMany', source_ref: 'repositories', target_ref: 'chunks', delete_action: 'c' },
    // repos -> repository_chunks (HasMany, CASCADE delete)
    hasManyChunks('repositories'),
  ],

  // -- Phase 3: Indexes -----------------------------------------------------
  indexes: [
    // Embedding indexes (HNSW + BM25)
    ...embeddingIndexes('repositories'),
    ...embeddingIndexes('chunks'),

    // Chunk table indexes
    ...chunkIndexes('repositories'),

    // GIN on tags
    ginIndex('repositories', 'tags'),

    // Trigram
    trgmIndex('repositories', 'name'),

    // B-tree indexes
    btreeIndex('repositories', 'last_synced_at'),
    btreeIndex('files', 'repository_id'),
    btreeIndex('files', 'path'),
    btreeIndex('files', 'language'),
    btreeIndex('chunks', 'file_id'),
    btreeIndex('chunks', 'repository_id'),
  ],
};

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  await provisionBlueprint(definition, 'Codebase Schema');
}

export { main as default };
