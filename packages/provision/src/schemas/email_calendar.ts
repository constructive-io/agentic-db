/**
 * email_calendar.ts — Email & Calendar domain schema (blueprint definition)
 *
 * Tables: email_threads, emails, email_attachments, calendars,
 *         calendar_events, calendar_attendees, provider_sync_states
 * Data* nodes: DataSearch
 */

import {
  type BlueprintDefinition,
  ORG_NODES,
  ORG_POLICY,
  CRUD_GRANTS,
  provisionBlueprint,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Email Threads ------------------------------------------------------
    {
      ref: 'email_threads',
      table_name: 'email_threads',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['subject', 'summary'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
          full_text_search: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'subject', weight: 'A' },
              { field: 'summary', weight: 'B' },
            ],
          },
          trgm_fields: ['subject'],
        }},
      ],
      fields: [
        { name: 'provider_thread_id', type: 'text' },
        { name: 'subject', type: 'text' },
        { name: 'last_message_at', type: 'timestamptz' },
        { name: 'summary', type: 'text' },
        { name: 'status', type: 'text', default_value: "'open'" },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Emails -------------------------------------------------------------
    {
      ref: 'emails',
      table_name: 'emails',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['subject', 'body_text'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
          full_text_search: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'subject', weight: 'A' },
              { field: 'body_text', weight: 'B' },
            ],
          },
          trgm_fields: ['subject'],
        }},
      ],
      fields: [
        { name: 'provider_message_id', type: 'text' },
        { name: 'from_contact_id', type: 'uuid' },
        { name: 'to', type: 'jsonb' },
        { name: 'cc', type: 'jsonb' },
        { name: 'bcc', type: 'jsonb' },
        { name: 'subject', type: 'text' },
        { name: 'body_text', type: 'text' },
        { name: 'body_html', type: 'text' },
        { name: 'sent_at', type: 'timestamptz' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Email Attachments --------------------------------------------------
    {
      ref: 'email_attachments',
      table_name: 'email_attachments',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'filename', type: 'text', is_required: true },
        { name: 'content_type', type: 'text' },
        { name: 'size_bytes', type: 'int' },
        { name: 'storage_url', type: 'text' },
        { name: 'provider_attachment_id', type: 'text' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Calendars ----------------------------------------------------------
    {
      ref: 'calendars',
      table_name: 'calendars',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'provider_account_id', type: 'text' },
        { name: 'provider_calendar_id', type: 'text' },
        { name: 'name', type: 'text', is_required: true },
        { name: 'color', type: 'text' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Calendar Events ----------------------------------------------------
    {
      ref: 'calendar_events',
      table_name: 'calendar_events',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['title', 'description'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
          full_text_search: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'title', weight: 'A' },
              { field: 'description', weight: 'B' },
            ],
          },
          trgm_fields: ['title'],
        }},
      ],
      fields: [
        { name: 'provider_event_id', type: 'text' },
        { name: 'title', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'start_time', type: 'timestamptz' },
        { name: 'end_time', type: 'timestamptz' },
        { name: 'meeting_url', type: 'text' },
        { name: 'organizer_contact_id', type: 'uuid' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Calendar Attendees (junction) --------------------------------------
    {
      ref: 'calendar_attendees',
      table_name: 'calendar_attendees',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'contact_id', type: 'uuid' },
        { name: 'response_status', type: 'text', default_value: "'needs_action'" },
        { name: 'role', type: 'text', default_value: "'required'" },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Provider Sync States (infra) ---------------------------------------
    {
      ref: 'provider_sync_states',
      table_name: 'provider_sync_states',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'provider', type: 'text', is_required: true },
        { name: 'resource_type', type: 'text', is_required: true },
        { name: 'sync_cursor', type: 'text' },
        { name: 'history_id', type: 'text' },
        { name: 'last_sync_at', type: 'timestamptz' },
        { name: 'status', type: 'text', default_value: "'active'" },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
  ],

  relations: [
    // Emails belong to threads
    { $type: 'RelationHasMany', source_ref: 'email_threads', target_ref: 'emails', delete_action: 'c' },
    // Attachments belong to emails
    { $type: 'RelationHasMany', source_ref: 'emails', target_ref: 'email_attachments', delete_action: 'c' },
    // Calendar events belong to calendars
    { $type: 'RelationHasMany', source_ref: 'calendars', target_ref: 'calendar_events', delete_action: 'c' },
    // Attendees belong to calendar events
    { $type: 'RelationHasMany', source_ref: 'calendar_events', target_ref: 'calendar_attendees', delete_action: 'c' },
  ],

  indexes: [
    // email_threads
    { table_ref: 'email_threads', column: 'tags', access_method: 'gin' },
    { table_ref: 'email_threads', column: 'provider_thread_id', access_method: 'btree' },
    { table_ref: 'email_threads', column: 'last_message_at', access_method: 'btree' },
    { table_ref: 'email_threads', column: 'status', access_method: 'btree' },

    // emails
    { table_ref: 'emails', column: 'tags', access_method: 'gin' },
    { table_ref: 'emails', column: 'provider_message_id', access_method: 'btree' },
    { table_ref: 'emails', column: 'sent_at', access_method: 'btree' },

    // calendars
    { table_ref: 'calendars', column: 'provider_calendar_id', access_method: 'btree' },

    // calendar_events
    { table_ref: 'calendar_events', column: 'tags', access_method: 'gin' },
    { table_ref: 'calendar_events', column: 'provider_event_id', access_method: 'btree' },
    { table_ref: 'calendar_events', column: 'start_time', access_method: 'btree' },
    { table_ref: 'calendar_events', column: 'end_time', access_method: 'btree' },

    // calendar_attendees
    { table_ref: 'calendar_attendees', column: 'response_status', access_method: 'btree' },

    // provider_sync_states
    { table_ref: 'provider_sync_states', column: 'provider', access_method: 'btree' },
    { table_ref: 'provider_sync_states', column: 'resource_type', access_method: 'btree' },
    { table_ref: 'provider_sync_states', column: 'status', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Email & Calendar Schema');
}

export { main as default };
