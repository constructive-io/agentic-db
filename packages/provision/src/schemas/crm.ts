/**
 * crm.ts — CRM domain schema (blueprint definition)
 *
 * Tables: images, contacts, companies, deals, events, venues, notes, interactions, tags
 * Chunk tables: contact_chunks, company_chunks, deal_chunks, event_chunks, venue_chunks, note_chunks, interaction_chunks
 * Link tables: contact_links, company_links, event_links, venue_links
 * Relations: M:N junctions, HasMany, BelongsTo (images)
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
  M2M_JUNCTION_OPTS,
} from '../blueprint';

// ---------------------------------------------------------------------------
// Blueprint definition
// ---------------------------------------------------------------------------

const definition: BlueprintDefinition = {
  tables: [
    // -- Images -------------------------------------------------------------
    orgTable('images', [
      req('url', 'text'),
      f('meta', 'jsonb'),
      f('alt_text', 'text'),
      f('caption', 'text'),
      f('embedding', 'vector(768)'),
    ]),

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
      f('location_geo', 'geography(Point,4326)'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
      f('search_tsv', 'tsvector'),
      f('main_image_id', 'uuid'),
    ]),

    // -- Companies ----------------------------------------------------------
    orgTable('companies', [
      req('name', 'text'),
      f('domain', 'text'),
      f('industry', 'text'),
      f('description', 'text'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
      f('search_tsv', 'tsvector'),
      f('main_image_id', 'uuid'),
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
      ...EMBEDDING_FIELDS,
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
      ...EMBEDDING_FIELDS,
      f('search_tsv', 'tsvector'),
      f('main_image_id', 'uuid'),
    ]),

    // -- Venues -------------------------------------------------------------
    orgTable('venues', [
      req('name', 'text'),
      f('address', 'text'),
      f('neighborhood', 'text'),
      f('city', 'text'),
      f('category', 'text'),
      f('status', 'text', { default_value: "'potential'" }),
      f('location', 'geography(Point,4326)'),
      f('google_place_id', 'text'),
      f('rating', 'numeric'),
      f('price_level', 'text'),
      f('is_favorite', 'bool', { default_value: 'false' }),
      f('notes', 'text'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
      f('search_tsv', 'tsvector'),
      f('main_image_id', 'uuid'),
    ]),

    // -- Notes --------------------------------------------------------------
    orgTable('notes', [
      req('content', 'text'),
      f('abstract', 'text'),
      f('overview', 'text'),
      f('active_count', 'int', { default_value: '0' }),
      f('last_accessed_at', 'timestamptz'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Interactions -------------------------------------------------------
    orgTable('interactions', [
      req('contact_id', 'uuid'),
      req('type', 'text'),
      req('occurred_at', 'timestamptz'),
      f('summary', 'text'),
      f('sentiment', 'text'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Tags (centralized) -------------------------------------------------
    orgTable('tags', [
      req('name', 'text'),
      f('color', 'text'),
      f('category', 'text'),
      f('usage_count', 'int', { default_value: '0' }),
    ]),

    // -- Chunk tables -------------------------------------------------------
    chunkTable('contacts'),
    chunkTable('companies'),
    chunkTable('deals'),
    chunkTable('events'),
    chunkTable('venues'),
    chunkTable('notes'),
    chunkTable('interactions'),

    // -- Link tables --------------------------------------------------------
    orgTable('contact_links', [
      f('title', 'text'),
      req('url', 'text'),
      f('embedding', 'vector(768)'),
    ]),
    orgTable('company_links', [
      f('title', 'text'),
      req('url', 'text'),
      f('embedding', 'vector(768)'),
    ]),
    orgTable('event_links', [
      f('title', 'text'),
      req('url', 'text'),
      f('embedding', 'vector(768)'),
    ]),
    orgTable('venue_links', [
      f('title', 'text'),
      req('url', 'text'),
      f('embedding', 'vector(768)'),
    ]),
  ],

  relations: [
    // -- BelongsTo: main_image -----------------------------------------------
    { $type: 'RelationBelongsTo', source_ref: 'contacts',  target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'companies', target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'events',    target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'venues',    target_ref: 'images', field_name: 'main_image_id', source_field_name: 'main_image_id', target_field_name: 'id', delete_action: 'n', is_required: false },

    // -- M:N: image galleries ------------------------------------------------
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'images', junction_table_name: 'contact_images', source_field_name: 'contact_id', target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'companies', target_ref: 'images', junction_table_name: 'company_images', source_field_name: 'company_id', target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'events',    target_ref: 'images', junction_table_name: 'event_images',   source_field_name: 'event_id',   target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'venues',    target_ref: 'images', junction_table_name: 'venue_images',   source_field_name: 'venue_id',   target_field_name: 'image_id', is_required: false, data: M2M_JUNCTION_OPTS },

    // -- HasMany: children ---------------------------------------------------
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'interactions',  delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'contact_links', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'companies', target_ref: 'company_links', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'events',    target_ref: 'event_links',   delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'venues',    target_ref: 'venue_links',   delete_action: 'c' },

    // -- HasMany: chunks (CASCADE delete) ------------------------------------
    hasManyChunks('contacts'),
    hasManyChunks('companies'),
    hasManyChunks('deals'),
    hasManyChunks('events'),
    hasManyChunks('venues'),
    hasManyChunks('notes'),
    hasManyChunks('interactions'),

    // -- M:N: cross-entity junctions -----------------------------------------
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'companies', junction_table_name: 'contact_companies', source_field_name: 'contact_id', target_field_name: 'company_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'events',    junction_table_name: 'contact_events',    source_field_name: 'contact_id', target_field_name: 'event_id',   is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'companies', target_ref: 'events',    junction_table_name: 'company_events',    source_field_name: 'company_id', target_field_name: 'event_id',   is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'events',    target_ref: 'venues',    junction_table_name: 'event_venues',      source_field_name: 'event_id',   target_field_name: 'venue_id',   is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'deals',     target_ref: 'contacts',  junction_table_name: 'deal_contacts',     source_field_name: 'deal_id',    target_field_name: 'contact_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],
};

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  await provisionBlueprint(definition, 'CRM Schema');
}

export { main as default };
