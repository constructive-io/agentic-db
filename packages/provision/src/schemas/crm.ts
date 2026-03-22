/**
 * crm.ts - CRM domain schema (blueprint definition)
 *
 * Data* nodes: DataSearch, DataPostGIS, DataEmbedding
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
  dataPostGIS,
  dataEmbedding,
  bm25Index,
  btreeIndex,
  ginIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Images (standalone embedding, no BM25/FTS) -------------------------
    orgTable('images', [
      req('url', 'text'),
      f('meta', 'jsonb'),
      f('alt_text', 'text'),
      f('caption', 'text'),
    ], [dataEmbedding({ field_name: 'embedding' })]),

    // -- Contacts -----------------------------------------------------------
    orgTable('contacts', [
      req('first_name', 'text'),
      f('last_name', 'text'),
      f('email', 'text'),
      f('phone', 'text'),
      f('headline', 'text'),
      f('bio', 'text'),
      f('location', 'text'),
      f('birthday', 'date'),
      f('relationship_type', 'text'),
      f('how_we_met', 'text'),
      f('twitter_handle', 'text'),
      f('linkedin_url', 'text'),
      f('github_username', 'text'),
      f('instagram_handle', 'text'),
      f('website', 'text'),
      f('tags', 'citext[]'),
      f('main_image_id', 'uuid'),
    ], [
        dataSearch({
          embedding_source_fields: ['first_name', 'last_name', 'headline', 'bio'],
          fts: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'first_name', weight: 'A' },
              { field: 'last_name', weight: 'A' },
              { field: 'headline', weight: 'B' },
              { field: 'bio', weight: 'C' },
            ],
          },
          trgm_fields: ['first_name', 'last_name'],
        }),
        dataPostGIS({ field_name: 'location_geo', use_geography: true }),
      ]),

    // -- Companies ----------------------------------------------------------
    orgTable('companies', [
      req('name', 'text'),
      f('domain', 'text'),
      f('industry', 'text'),
      f('description', 'text'),
      f('tags', 'citext[]'),
      f('main_image_id', 'uuid'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'industry'],
          fts: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'name', weight: 'A' },
              { field: 'description', weight: 'B' },
              { field: 'industry', weight: 'C' },
            ],
          },
          trgm_fields: ['name'],
        }),
      ]),

    // -- Deals --------------------------------------------------------------
    orgTable('deals', [
      req('name', 'text'),
      f('stage', 'text', { default_value: "'lead'" }),
      f('value', 'numeric'),
      f('currency', 'text', { default_value: "'USD'" }),
      f('expected_close_date', 'timestamptz'),
      f('notes_text', 'text'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'notes_text'],
        }),
      ]),

    // -- Events -------------------------------------------------------------
    orgTable('events', [
      req('name', 'text'),
      f('event_type', 'text'),
      f('location', 'text'),
      f('city', 'text'),
      f('started_at', 'timestamptz'),
      f('ended_at', 'timestamptz'),
      f('notes_text', 'text'),
      f('tags', 'citext[]'),
      f('main_image_id', 'uuid'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'notes_text', 'location'],
          fts: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'name', weight: 'A' },
              { field: 'notes_text', weight: 'B' },
              { field: 'location', weight: 'C' },
            ],
          },
          trgm_fields: ['name'],
        }),
      ]),

    // -- Venues -------------------------------------------------------------
    orgTable('venues', [
      req('name', 'text'),
      f('address', 'text'),
      f('neighborhood', 'text'),
      f('city', 'text'),
      f('category', 'text'),
      f('status', 'text', { default_value: "'potential'" }),
      f('google_place_id', 'text'),
      f('rating', 'numeric'),
      f('price_level', 'text'),
      f('is_favorite', 'bool', { default_value: 'false' }),
      f('notes', 'text'),
      f('tags', 'citext[]'),
      f('main_image_id', 'uuid'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'notes', 'neighborhood'],
          fts: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'name', weight: 'A' },
              { field: 'notes', weight: 'B' },
              { field: 'neighborhood', weight: 'C' },
            ],
          },
          trgm_fields: ['name'],
        }),
        dataPostGIS({ field_name: 'location', use_geography: true }),
      ]),

    // -- Notes --------------------------------------------------------------
    orgTable('notes', [
      req('content', 'text'),
      f('abstract', 'text'),
      f('overview', 'text'),
      f('active_count', 'int', { default_value: '0' }),
      f('last_accessed_at', 'timestamptz'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['content', 'abstract'],
        }),
      ]),

    // -- Interactions -------------------------------------------------------
    orgTable('interactions', [
      req('contact_id', 'uuid'),
      req('type', 'text'),
      req('occurred_at', 'timestamptz'),
      f('summary', 'text'),
      f('sentiment', 'text'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['summary'],
        }),
      ]),

    // -- Tags (no embeddings) -----------------------------------------------
    orgTable('tags', [
      req('name', 'text'),
      f('color', 'text'),
      f('category', 'text'),
      f('usage_count', 'int', { default_value: '0' }),
    ]),

    // -- Chunk tables (DataSearch auto-applied via chunkTable helper) --------
    chunkTable('contacts'),
    chunkTable('companies'),
    chunkTable('deals'),
    chunkTable('events'),
    chunkTable('venues'),
    chunkTable('notes'),
    chunkTable('interactions'),

    // -- Link tables (standalone embedding) ---------------------------------
    orgTable('contact_links', [f('title', 'text'), req('url', 'text')], [dataEmbedding({ field_name: 'embedding' })]),
    orgTable('company_links', [f('title', 'text'), req('url', 'text')], [dataEmbedding({ field_name: 'embedding' })]),
    orgTable('event_links', [f('title', 'text'), req('url', 'text')], [dataEmbedding({ field_name: 'embedding' })]),
    orgTable('venue_links', [f('title', 'text'), req('url', 'text')], [dataEmbedding({ field_name: 'embedding' })]),
  ],

  relations: [
    // BelongsTo: main_image
    { $type: 'RelationBelongsTo', source_ref: 'contacts',  target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'companies', target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'events',    target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'venues',    target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },

    // M:N: image galleries
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'images', junction_table_name: 'contact_images', source_field_name: 'contact_id', target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'companies', target_ref: 'images', junction_table_name: 'company_images', source_field_name: 'company_id', target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'events',    target_ref: 'images', junction_table_name: 'event_images',   source_field_name: 'event_id',   target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'venues',    target_ref: 'images', junction_table_name: 'venue_images',   source_field_name: 'venue_id',   target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },

    // HasMany: children
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'interactions',  delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'contact_links', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'companies', target_ref: 'company_links', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'events',    target_ref: 'event_links',   delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'venues',    target_ref: 'venue_links',   delete_action: 'c' },

    // HasMany: chunks (CASCADE delete)
    hasManyChunks('contacts'),
    hasManyChunks('companies'),
    hasManyChunks('deals'),
    hasManyChunks('events'),
    hasManyChunks('venues'),
    hasManyChunks('notes'),
    hasManyChunks('interactions'),

    // M:N: cross-entity junctions
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'companies', junction_table_name: 'contact_companies', source_field_name: 'contact_id', target_field_name: 'company_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'events',    junction_table_name: 'contact_events',    source_field_name: 'contact_id', target_field_name: 'event_id',   is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'companies', target_ref: 'events',    junction_table_name: 'company_events',    source_field_name: 'company_id', target_field_name: 'event_id',   is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'events',    target_ref: 'venues',    junction_table_name: 'event_venues',      source_field_name: 'event_id',   target_field_name: 'venue_id',   is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'deals',     target_ref: 'contacts',  junction_table_name: 'deal_contacts',     source_field_name: 'deal_id',    target_field_name: 'contact_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],

  // Phase 3: Only indexes without Data* equivalents
  // DataSearch handles: HNSW, BM25, GIN(search_tsv), trigram
  // DataPostGIS handles: GIST on geography
  // DataEmbedding handles: HNSW on standalone vectors
  indexes: [
    bm25Index('notes', 'content'),

    ginIndex('contacts', 'tags'),
    ginIndex('companies', 'tags'),
    ginIndex('deals', 'tags'),
    ginIndex('events', 'tags'),
    ginIndex('venues', 'tags'),
    ginIndex('notes', 'tags'),
    ginIndex('interactions', 'tags'),

    btreeIndex('contacts', 'email'),
    btreeIndex('contacts', 'relationship_type'),
    btreeIndex('contacts', 'twitter_handle'),
    btreeIndex('contacts', 'github_username'),
    btreeIndex('companies', 'domain'),
    btreeIndex('deals', 'stage'),
    btreeIndex('deals', 'expected_close_date'),
    btreeIndex('events', 'started_at'),
    btreeIndex('events', 'event_type'),
    btreeIndex('venues', 'city'),
    btreeIndex('venues', 'category'),
    btreeIndex('venues', 'is_favorite'),
    btreeIndex('venues', 'google_place_id'),
    // btreeIndex('interactions', 'contact_id'), — auto-created by FK (contacts → interactions)
    btreeIndex('interactions', 'type'),
    btreeIndex('interactions', 'occurred_at'),
    btreeIndex('notes', 'active_count'),
    btreeIndex('notes', 'last_accessed_at'),
    btreeIndex('tags', 'name'),
    btreeIndex('tags', 'category'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'CRM Schema');
}

export { main as default };
