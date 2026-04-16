/**
 * crm.ts - CRM domain schema (blueprint definition)
 *
 * Tables: images, contacts, companies, deals, events, venues, notes,
 *         interactions, touchpoints, tags, contact_links, company_links,
 *         event_links, venue_links, contact_emails, contact_phones,
 *         contact_addresses
 * Data* nodes: SearchUnified, SearchSpatial, SearchVector
 *
 * Field conventions for contacts:
 *   - contacts.email / contacts.phone / contacts.location are denormalized
 *     "primary" values kept directly on the record for fast display, search
 *     (FTS / trgm), and simple queries.
 *   - contact_emails / contact_phones / contact_addresses are the normalized
 *     child tables that hold the full set of values (multiple emails, phones,
 *     and structured addresses per contact).
 *   - contact_links holds arbitrary URLs (socials, websites, portfolios).
 */

import {
  type BlueprintDefinition,
  ORG_NODES,
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
        { $type: 'SearchVector', data: { field_name: 'embedding', enqueue_job: false } },
      ],
      fields: [
        { name: 'url', type: 'text', is_required: true },
        { name: 'meta', type: 'jsonb' },
        { name: 'alt_text', type: 'text' },
        { name: 'caption', type: 'text' },
      ],
    },

    // -- Contacts -----------------------------------------------------------
    {
      ref: 'contacts',
      table_name: 'contacts',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
          embedding: { source_fields: ['first_name', 'last_name', 'headline', 'bio'], chunks: {} },
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
        { $type: 'SearchSpatial', data: { field_name: 'location_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'first_name', type: 'text', is_required: true },
        { name: 'last_name', type: 'text' },
        // Denormalized primary values (see contact_emails / contact_phones for full lists)
        { name: 'email', type: 'text' },
        { name: 'phone', type: 'text' },
        { name: 'headline', type: 'text' },
        { name: 'bio', type: 'text' },
        // Denormalized primary location (see contact_addresses for structured addresses)
        { name: 'location', type: 'text' },
        { name: 'birthday', type: 'date' },
        { name: 'relationship_types', type: 'citext[]' },
        { name: 'how_we_met', type: 'text' },
        { name: 'tags', type: 'citext[]' },
        { name: 'main_image_id', type: 'uuid' },
      ],
    },

    // -- Companies ----------------------------------------------------------
    {
      ref: 'companies',
      table_name: 'companies',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
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
    },

    // -- Deals --------------------------------------------------------------
    {
      ref: 'deals',
      table_name: 'deals',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
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
    },

    // -- Events -------------------------------------------------------------
    {
      ref: 'events',
      table_name: 'events',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
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
        { $type: 'SearchSpatial', data: { field_name: 'location_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
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
    },

    // -- Venues -------------------------------------------------------------
    {
      ref: 'venues',
      table_name: 'venues',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
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
        { $type: 'SearchSpatial', data: { field_name: 'location', use_geography: true, geometry_type: 'Point', srid: 4326 } },
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
    },

    // -- Notes --------------------------------------------------------------
    {
      ref: 'notes',
      table_name: 'notes',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
          embedding: { source_fields: ['content', 'abstract'], chunks: {} },
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
    },

    // -- Interactions -------------------------------------------------------
    {
      ref: 'interactions',
      table_name: 'interactions',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
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
    },

    // -- Touchpoints (cross-entity interaction timeline) --------------------
    {
      ref: 'touchpoints',
      table_name: 'touchpoints',
      nodes: [
        ...ORG_NODES,
        { $type: 'SearchUnified', data: {
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
    },

    // -- Contact detail tables (normalized, no embeddings) ------------------
    //
    // These child tables hold the full set of emails, phones, and addresses
    // for each contact. The denormalized contacts.email / contacts.phone /
    // contacts.location fields cache the primary value for convenience.
    {
      ref: 'contact_emails',
      table_name: 'contact_emails',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'email', type: 'text', is_required: true },
        { name: 'email_type', type: 'text' },
        { name: 'is_primary', type: 'bool', default_value: 'false' },
      ],
    },
    {
      ref: 'contact_phones',
      table_name: 'contact_phones',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'phone', type: 'text', is_required: true },
        { name: 'phone_type', type: 'text' },
        { name: 'is_primary', type: 'bool', default_value: 'false' },
      ],
    },
    {
      ref: 'contact_addresses',
      table_name: 'contact_addresses',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'street', type: 'text' },
        { name: 'city', type: 'text' },
        { name: 'state', type: 'text' },
        { name: 'postal_code', type: 'text' },
        { name: 'country', type: 'text' },
        { name: 'address_type', type: 'text' },
        { name: 'is_primary', type: 'bool', default_value: 'false' },
      ],
    },

    // -- Link tables (standalone embedding) ---------------------------------
    {
      ref: 'contact_links',
      table_name: 'contact_links',
      nodes: [...ORG_NODES, { $type: 'SearchVector', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
    },
    {
      ref: 'company_links',
      table_name: 'company_links',
      nodes: [...ORG_NODES, { $type: 'SearchVector', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
    },
    {
      ref: 'event_links',
      table_name: 'event_links',
      nodes: [...ORG_NODES, { $type: 'SearchVector', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
    },
    {
      ref: 'venue_links',
      table_name: 'venue_links',
      nodes: [...ORG_NODES, { $type: 'SearchVector', data: { field_name: 'embedding', enqueue_job: false } }],
      fields: [{ name: 'title', type: 'text' }, { name: 'url', type: 'text', is_required: true }],
    },

  ],

  relations: [
    // BelongsTo: main_image
    { $type: 'RelationBelongsTo', source_ref: 'contacts',  target_ref: 'images', field_name: 'main_image_id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'companies', target_ref: 'images', field_name: 'main_image_id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'events',    target_ref: 'images', field_name: 'main_image_id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'venues',    target_ref: 'images', field_name: 'main_image_id', delete_action: 'n', is_required: false },

    // M:N: image galleries
    { $type: 'RelationManyToMany', source_ref: 'contacts',  target_ref: 'images', junction_table_name: 'contact_images', source_field_name: 'contact_id', target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'companies', target_ref: 'images', junction_table_name: 'company_images', source_field_name: 'company_id', target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'events',    target_ref: 'images', junction_table_name: 'event_images',   source_field_name: 'event_id',   target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'venues',    target_ref: 'images', junction_table_name: 'venue_images',   source_field_name: 'venue_id',   target_field_name: 'image_id', ...M2M_JUNCTION_OPTS },

    // HasMany: children
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'interactions',     delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'contact_links',    delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'contact_emails',   delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'contact_phones',   delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'contacts',  target_ref: 'contact_addresses', delete_action: 'c' },
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
    { $type: 'RelationBelongsTo', source_ref: 'touchpoints', target_ref: 'deals',     field_name: 'deal_id',    delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'touchpoints', target_ref: 'companies', field_name: 'company_id', delete_action: 'n', is_required: false },
    { $type: 'RelationBelongsTo', source_ref: 'touchpoints', target_ref: 'events',    field_name: 'event_id',   delete_action: 'n', is_required: false },
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
    { table_ref: 'contacts', column: 'relationship_types', access_method: 'gin' },
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

    // contact details
    { table_ref: 'contact_emails', column: 'email', access_method: 'btree' },
    { table_ref: 'contact_emails', column: 'email_type', access_method: 'btree' },
    { table_ref: 'contact_phones', column: 'phone', access_method: 'btree' },
    { table_ref: 'contact_phones', column: 'phone_type', access_method: 'btree' },
    { table_ref: 'contact_addresses', column: 'city', access_method: 'btree' },
    { table_ref: 'contact_addresses', column: 'country', access_method: 'btree' },
    { table_ref: 'contact_addresses', column: 'address_type', access_method: 'btree' },

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
