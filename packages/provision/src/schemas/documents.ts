/**
 * documents.ts — Git-backed Headless CMS document schema (blueprint definition)
 *
 * Tables: documents
 * Data* nodes: SearchUnified (embedding + BM25 + chunks)
 *
 * Documents represent version-controlled files ingested from
 * Git repositories (e.g. biz-docs). They carry structured metadata,
 * repo/path/commit tracking for sync, and full unified search with
 * chunked embeddings for RAG.
 */

import {
  type BlueprintDefinition,
  provisionBlueprint,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Documents ------------------------------------------------------------
    {
      ref: 'documents',
      table_name: 'documents',
      nodes: [
        'DataId',
        'DataTimestamps',
        { $type: 'SearchUnified', data: {
          embedding: { source_fields: ['title', 'content'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'title', type: 'text' },
        { name: 'content', type: 'text', is_required: true },
        { name: 'metadata', type: 'jsonb' },
        { name: 'repo_name', type: 'text' },
        { name: 'file_path', type: 'text' },
        { name: 'commit_hash', type: 'text' },
        { name: 'tags', type: 'citext[]' },
      ],
    },
  ],

  relations: [],

  indexes: [
    { table_ref: 'documents', column: 'tags', access_method: 'gin' },
    { table_ref: 'documents', column: 'repo_name', access_method: 'btree' },
    { table_ref: 'documents', column: 'file_path', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Documents Schema');
}

export { main as default };
