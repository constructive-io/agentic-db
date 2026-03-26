/**
 * crm.ts - CRM domain schema (blueprint definition)
 *
 * Tables: images, contacts, companies, deals, events, venues, notes,
 *         interactions, touchpoints, tags, contact_links, company_links,
 *         event_links, venue_links
 * Data* nodes: DataSearch, DataPostGIS, DataEmbedding
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
    // -- Images (standalone embedding, no BM25/FTS) -------------------------
    {
      ref: 'images',
      table_name: 'images',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataEmbedding', data: { field_name: 'embedding', enqueue_job: false } },
      ],
      fields: [
        { name: 'url', type: 'text', is_required: true },
        { name: 'meta', type: 'jsonb' },
        { name: 'alt_text', type: 'text' },
        { name: 'caption', type: 'text' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Contacts -----------------------------------------------------------
    {
      ref: 'contacts',
      table_name: 'contacts',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['first_name', 'last_name', 'headline', 'bio'] },
          bm25: { field_name: 'embedding_text' },
          full_text_search: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'first_name', weight: 'A' },
              { field: 'last_name', weight: 'A' },
              { field: 'headline', weight: 'B' },
              { field: 'bio', weight: 'C' },
            ],
          },
          trgm_fields: ['first_name', 'last_name'],
        }},
        { $type: 'DataPostGIS', data: { field_name: 'location_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'first_name', type: 'text', is_required: true },
        { name: 'last_name', type: 'text' },
        { name: 'email', type: 'text' },
        { name: 'phone', type: 'text' },
        { name: 'headline', type: 'text' },
        { name: 'bio', type: 'text' },
        { name: 'location', type: 'text' },
        { name: 'birthday', type: 'date' },
        { name: 'relationship_type', type: 'text' },
        { name: 'how_we_met', type: 'text' },
        { name: 'twitter_handle', type: 'text' },
        { name: 'linkedin_url', type: 'text' },
        { name: 'github_username', type: 'text' },
        { name: 'instagram_handle', type: 'text' },
        { name: 'website', type: 'text' },
        { name: 'tags', type: 'citext[]' },
        { name: 'main_image_id', type: 'uuid' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Companies ----------------------------------------------------------
    {
      ref: 'companies',
      table_name: 'companies',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description', 'industry'] },
          bm25: { field_name: 'embedding_text' },
          full_text_search: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'name', weight: 'A' },
              { field: 'description', weight: 'B' },
              { field: 'industry', weight: 'C' },
            ],
          },
          trgm_fields: ['name'],
        }},
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'domain', type: 'text' },
        { name: 'industry', type: 'text' },
        { name: 'description', type: 'text' },
        { name: 'tags', type: 'citext[]' },
        { name: 'main_image_id', type: 'uuid' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Deals --------------------------------------------------------------
    {
      ref: 'deals',
      table_name: 'deals',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'notes_text'] },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'stage', type: 'text', default_value: "'lead'" },
        { name: 'value', type: 'numeric' },
        { name: 'currency', type: 'text', default_value: "'USD'" },
        { name: 'expected_close_date', type: 'timestamptz' },
        { name: 'notes_text', type: 'text' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Events -------------------------------------------------------------
    {
      ref: 'events',
      table_name: 'events',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'notes_text', 'location'] },
          bm25: { field_name: 'embedding_text' },
          full_text_search: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'name', weight: 'A' },
              { field: 'notes_text', weight: 'B' },
              { field: 'location', weight: 'C' },
            ],
          },
          trgm_fields: ['name'],
        }},
        { $type: 'DataPostGIS', data: { field_name: 'location_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'event_type', type: 'text' },
        { name: 'location', type: 'text' },
        { name: 'city', type: 'text' },
        { name: 'started_at', type: 'timestamptz' },
        { name: 'ended_at', type: 'timestamptz' },
        { name: 'notes_text', type: 'text' },
        { name: 'tags', type: 'citext[]' },
        { name: 'main_image_id', type: 'uuid' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Venues -------------------------------------------------------------
    {
      ref: 'venues',
      table_name: 'venues',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'notes', 'neighborhood'] },
          bm25: { field_name: 'embedding_text' },
          full_text_search: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'name', weight: 'A' },
              { field: 'notes', weight: 'B' },
              { field: 'neighborhood', weight: 'C' },
            ],
          },
          trgm_fields: ['name'],
        }},
        { $type: 'DataPostGIS', data: { field_name: 'location', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'address', type: 'text' },
        { name: 'neighborhood', type: 'text' },
        { name: 'city', type: 'text' },
        { name: 'category', type: 'text' },
        { name: 'status', type: 'text', default_value: "'potential'" },
        { name: 'google_place_id', type: 'text' },
        { name: 'rating', type: 'numeric' },
        { name: 'price_level', type: 'text' },
        { name: 'is_favorite', type: 'bool', default_value: 'false' },
        { name: 'notes', type: 'text' },
        { name: 'tags', type: 'citext[]' },
        { name: 'main_image_id', type: 'uuid' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Notes --------------------------------------------------------------
    {
      ref: 'notes',
      table_name: 'notes',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['content', 'abstract'] },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'content', type: 'text', is_required: true },
        { name: 'abstract', type: 'text' },
        { name: 'overview', type: 'text' },
        { name: 'active_count', type: 'int', default_value: '0' },
        { name: 'last_accessed_at', type: 'timestamptz' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Interactions -------------------------------------------------------
    {
      ref: 'interactions',
      table_name: 'interactions',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['summary'] },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'contact_id', type: 'uuid', is_required: true },
        { name: 'type', type: 'text', is_required: true },
        { name: 'occurred_at', type: 'timestamptz', is_required: true },
        { name: 'summary', type: 'text' },
        { name: 'sentiment', type: 'text' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Touchpoints (cross-entity interaction timeline) --------------------
    {
      ref: 'touchpoints',
      table_name: 'touchpoints',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['subject', 'summary'] },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'contact_id', type: 'uuid', is_required: true },
        { name: 'touchpoint_type', type: 'text', is_required: true },
        { name: 'occurred_at', type: 'timestamptz', is_required: true },
        { name: 'subject', type: 'text' },
        { name: 'summary', type: 'text' },
        { name: 'sentiment', type: 'text' },
        { name: 'direction', type: 'text' },
        { name: 'channel', type: 'text' },
        { name: 'deal_id', type: 'uuid' },
        { name: 'company_id', type: 'uuid' },
        { name: 'event_id', type: 'uuid' },
        { name: 'meta', type: 'jsonb' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Tags (no embeddings) -----------------------------------------------
    {
      ref: 'tags',
      table_name: 'tags',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'color', type: 'text' },
        { name: 'category', type: 'text' },
        { name: 'usage_count', type: 'int', default_value: '0' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Link tables (standalone embedding) ---------------------------------
    {
      ref: 'contact_links',
      table_name: 'contact_links',
      nodes: [...ORG_NODES, { $type: 'DataEmbedding', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
    {
      ref: 'company_links',
      table_name: 'company_links',
      nodes: [...ORG_NODES, { $type: 'DataEmbedding', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
    {
      ref: 'event_links',
      table_name: 'event_links',
      nodes: [...ORG_NODES, { $type: 'DataEmbedding', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
    {
      ref: 'venue_links',
      table_name: 'venue_links',
      nodes: [...ORG_NODES, { $type: 'DataEmbedding', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
  ],

  relations: [
    // BelongsTo: main_image
    { $type: 'RelationBelongsTo', source_ref: 'contacts',  target_ref: 'images', field_name: 'main_image_id', delete_action: 'n' },
    { $type: 'RelationBelongsTo', source_ref: 'companies', target_ref: 'images', field_name: 'main_image_id', delete_action: 'n' },
    { $type: 'RelationBelongsTo', source_ref: 'events',    target_ref: 'images', field_name: 'main_image_id', delete_action: 'n' },
    { $type: 'RelationBelongsTo', source_ref: 'venues',    target_ref: 'images', field_name: 'main_image_id', delete_action: 'n' },

    // M:N: image galleries
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'images', junction_table_name: 'contact_images', source_field_name: 'contact_id', target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'companies', target_ref: 'images', junction_table_name: 'company_images', source_field_name: 'company_id', target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'events',    target_ref: 'images', junction_table_name: 'event_images',   source_field_name: 'event_id',   target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'venues',    target_ref: 'images', junction_table_name: 'venue_images',   source_field_name: 'venue_id',   target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },

    // HasMany: children
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'interactions',  delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'contact_links', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'companies', target_ref: 'company_links', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'events',    target_ref: 'event_links',   delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'venues',    target_ref: 'venue_links',   delete_action: 'c' },

    // M:N: cross-entity junctions
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'companies', junction_table_name: 'contact_companies', source_field_name: 'contact_id', target_field_name: 'company_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'events',    junction_table_name: 'contact_events',    source_field_name: 'contact_id', target_field_name: 'event_id',   ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'companies', target_ref: 'events',    junction_table_name: 'company_events',    source_field_name: 'company_id', target_field_name: 'event_id',   ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'events',    target_ref: 'venues',    junction_table_name: 'event_venues',      source_field_name: 'event_id',   target_field_name: 'venue_id',   ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'deals',     target_ref: 'contacts',  junction_table_name: 'deal_contacts',     source_field_name: 'deal_id',    target_field_name: 'contact_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'deals',     target_ref: 'companies', junction_table_name: 'deal_companies',    source_field_name: 'deal_id',    target_field_name: 'company_id', ...M2M_JUNCTION_OPTS },

    // Self-referencing: contact-to-contact relationships
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'contacts',  junction_table_name: 'contact_relationships', source_field_name: 'contact_id', target_field_name: 'related_contact_id', ...M2M_JUNCTION_OPTS },

    // Touchpoints belong to contacts
    { $type: 'RelationHasMany', source_ref: 'contacts', target_ref: 'touchpoints', delete_action: 'c' },

    // Touchpoints optional FKs to other entities
    { $type: 'RelationBelongsTo', source_ref: 'touchpoints', target_ref: 'deals',     field_name: 'deal_id',    delete_action: 'n' },
    { $type: 'RelationBelongsTo', source_ref: 'touchpoints', target_ref: 'companies', field_name: 'company_id', delete_action: 'n' },
    { $type: 'RelationBelongsTo', source_ref: 'touchpoints', target_ref: 'events',    field_name: 'event_id',   delete_action: 'n' },
  ],

  indexes: [
    { table_ref: 'notes', column: 'content', access_method: 'bm25', options: { text_config: 'english' } },

    { table_ref: 'contacts', column: 'tags', access_method: 'gin' },
    { table_ref: 'companies', column: 'tags', access_method: 'gin' },
    { table_ref: 'deals', column: 'tags', access_method: 'gin' },
    { table_ref: 'events', column: 'tags', access_method: 'gin' },
    { table_ref: 'venues', column: 'tags', access_method: 'gin' },
    { table_ref: 'notes', column: 'tags', access_method: 'gin' },
    { table_ref: 'interactions', column: 'tags', access_method: 'gin' },

    { table_ref: 'contacts', column: 'email', access_method: 'btree' },
    { table_ref: 'contacts', column: 'relationship_type', access_method: 'btree' },
    { table_ref: 'contacts', column: 'twitter_handle', access_method: 'btree' },
    { table_ref: 'contacts', column: 'github_username', access_method: 'btree' },
    { table_ref: 'companies', column: 'domain', access_method: 'btree' },
    { table_ref: 'deals', column: 'stage', access_method: 'btree' },
    { table_ref: 'deals', column: 'expected_close_date', access_method: 'btree' },
    { table_ref: 'events', column: 'started_at', access_method: 'btree' },
    { table_ref: 'events', column: 'event_type', access_method: 'btree' },
    { table_ref: 'venues', column: 'city', access_method: 'btree' },
    { table_ref: 'venues', column: 'category', access_method: 'btree' },
    { table_ref: 'venues', column: 'is_favorite', access_method: 'btree' },
    { table_ref: 'venues', column: 'google_place_id', access_method: 'btree' },
    { table_ref: 'interactions', column: 'type', access_method: 'btree' },
    { table_ref: 'interactions', column: 'occurred_at', access_method: 'btree' },
    { table_ref: 'notes', column: 'active_count', access_method: 'btree' },
    { table_ref: 'notes', column: 'last_accessed_at', access_method: 'btree' },
    { table_ref: 'tags', column: 'name', access_method: 'btree' },
    { table_ref: 'tags', column: 'category', access_method: 'btree' },

    // touchpoints
    { table_ref: 'touchpoints', column: 'tags', access_method: 'gin' },
    { table_ref: 'touchpoints', column: 'touchpoint_type', access_method: 'btree' },
    { table_ref: 'touchpoints', column: 'occurred_at', access_method: 'btree' },
    { table_ref: 'touchpoints', column: 'direction', access_method: 'btree' },
    { table_ref: 'touchpoints', column: 'channel', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'CRM Schema');
}

export { main as default };
