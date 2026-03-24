/**
 * email_calendar.ts - Email & Calendar schema (blueprint definition)
 *
 * Turns agentic-db into an email and calendar powerhouse with full CRM
 * integration. Every thread, email body, and calendar description is
 * chunked/embedded for instant RAG retrieval.
 *
 * Data* nodes: DataSearch, DataPostGIS
 */

import {
  type BlueprintDefinition,
  orgTable,
  provisionBlueprint,
  f,
  req,
  M2M_JUNCTION_OPTS,
  dataSearch,
  dataPostGIS,
  btreeIndex,
  ginIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // =========================================================================
    //  EMAIL
    // =========================================================================

    // -- Email Threads --------------------------------------------------------
    orgTable('email_threads', [
      f('provider_thread_id', 'text'),
      req('subject', 'text'),
      f('last_message_at', 'timestamptz'),
      f('summary', 'text'),
      f('status', 'text', { default_value: "'open'" }),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['subject', 'summary'],
          chunks: true,
        }),
      ]),

    // -- Emails ---------------------------------------------------------------
    orgTable('emails', [
      req('thread_id', 'uuid'),
      f('provider_message_id', 'text'),
      f('from_contact_id', 'uuid'),
      f('subject', 'text'),
      req('body_text', 'text'),
      f('body_html', 'text'),
      f('sent_at', 'timestamptz'),
      f('to_recipients', 'jsonb'),
      f('cc_recipients', 'jsonb'),
      f('bcc_recipients', 'jsonb'),
      f('is_draft', 'bool', { default_value: 'false' }),
      f('is_read', 'bool', { default_value: 'false' }),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['body_text', 'subject'],
          chunks: true,
          fts: {
            field_name: 'search_tsv',
            source_fields: [
              { field: 'subject', weight: 'A' },
              { field: 'body_text', weight: 'B' },
            ],
          },
          trgm_fields: ['subject'],
        }),
      ]),

    // -- Email Attachments ----------------------------------------------------
    orgTable('email_attachments', [
      req('email_id', 'uuid'),
      req('filename', 'text'),
      f('content_type', 'text'),
      f('size_bytes', 'int'),
      f('storage_url', 'text'),
      f('meta', 'jsonb'),
    ]),

    // =========================================================================
    //  CALENDAR
    // =========================================================================

    // -- Calendars ------------------------------------------------------------
    orgTable('calendars', [
      f('provider_account_id', 'text'),
      f('provider_calendar_id', 'text'),
      req('name', 'text'),
      f('color', 'text'),
      f('is_primary', 'bool', { default_value: 'false' }),
      f('is_active', 'bool', { default_value: 'true' }),
    ]),

    // -- Calendar Events ------------------------------------------------------
    orgTable('calendar_events', [
      req('calendar_id', 'uuid'),
      f('provider_event_id', 'text'),
      req('title', 'text'),
      f('description', 'text'),
      f('start_time', 'timestamptz'),
      f('end_time', 'timestamptz'),
      f('is_all_day', 'bool', { default_value: 'false' }),
      f('meeting_url', 'text'),
      f('organizer_contact_id', 'uuid'),
      f('recurrence_rule', 'text'),
      f('status', 'text', { default_value: "'confirmed'" }),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['title', 'description'],
          chunks: true,
        }),
        dataPostGIS({ field_name: 'location', use_geography: true }),
      ]),

    // -- Calendar Attendees (junction with metadata) --------------------------
    orgTable('calendar_attendees', [
      req('calendar_event_id', 'uuid'),
      req('contact_id', 'uuid'),
      f('response_status', 'text', { default_value: "'needs_action'" }),
      f('role', 'text', { default_value: "'required'" }),
    ]),

    // =========================================================================
    //  SYNC ENGINE
    // =========================================================================

    // -- Provider Sync States -------------------------------------------------
    orgTable('provider_sync_states', [
      req('provider', 'text'),
      req('resource_type', 'text'),
      f('sync_cursor', 'text'),
      f('last_sync_at', 'timestamptz'),
      f('status', 'text', { default_value: "'active'" }),
      f('error_message', 'text'),
      f('config', 'jsonb'),
    ]),
  ],

  relations: [
    // Email threads -> emails (cascade: delete thread = delete emails)
    { $type: 'RelationHasMany', source_ref: 'email_threads', target_ref: 'emails', delete_action: 'c' },

    // Emails -> attachments (cascade)
    { $type: 'RelationHasMany', source_ref: 'emails', target_ref: 'email_attachments', delete_action: 'c' },

    // Emails -> contacts (from_contact_id, optional FK)
    { $type: 'RelationBelongsTo', source_ref: 'emails', target_ref: 'contacts', field_name: 'from_contact_id', source_field_name: 'from_contact_id', target_field_name: 'id', delete_action: 'n', is_required: false },

    // Calendar -> calendar_events (cascade: delete calendar = delete events)
    { $type: 'RelationHasMany', source_ref: 'calendars', target_ref: 'calendar_events', delete_action: 'c' },

    // Calendar events -> attendees (cascade: delete event = delete attendees)
    { $type: 'RelationHasMany', source_ref: 'calendar_events', target_ref: 'calendar_attendees', delete_action: 'c' },

    // Calendar attendees -> contacts (BelongsTo, no cascade)
    { $type: 'RelationBelongsTo', source_ref: 'calendar_attendees', target_ref: 'contacts', field_name: 'contact_id', source_field_name: 'contact_id', target_field_name: 'id', delete_action: 'n', is_required: true },

    // Calendar events -> contacts (organizer, optional FK)
    { $type: 'RelationBelongsTo', source_ref: 'calendar_events', target_ref: 'contacts', field_name: 'organizer_contact_id', source_field_name: 'organizer_contact_id', target_field_name: 'id', delete_action: 'n', is_required: false },

    // Email recipients: emails <-> contacts (M:N junction)
    { $type: 'RelationManyToMany', source_ref: 'emails', target_ref: 'contacts', junction_table_name: 'email_recipients', source_field_name: 'email_id', target_field_name: 'contact_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],

  indexes: [
    // Email threads
    ginIndex('email_threads', 'tags'),
    btreeIndex('email_threads', 'provider_thread_id'),
    btreeIndex('email_threads', 'status'),
    btreeIndex('email_threads', 'last_message_at'),

    // Emails
    ginIndex('emails', 'tags'),
    ginIndex('emails', 'to_recipients'),
    ginIndex('emails', 'cc_recipients'),
    ginIndex('emails', 'bcc_recipients'),
    btreeIndex('emails', 'provider_message_id'),
    btreeIndex('emails', 'sent_at'),
    // btreeIndex('emails', 'thread_id'), — auto-created by FK (email_threads -> emails)
    // btreeIndex('emails', 'from_contact_id'), — auto-created by FK (BelongsTo contacts)
    btreeIndex('emails', 'is_draft'),
    btreeIndex('emails', 'is_read'),

    // Email attachments
    // btreeIndex('email_attachments', 'email_id'), — auto-created by FK (emails -> email_attachments)
    btreeIndex('email_attachments', 'content_type'),

    // Calendars
    btreeIndex('calendars', 'provider_account_id'),
    btreeIndex('calendars', 'provider_calendar_id'),
    btreeIndex('calendars', 'is_active'),

    // Calendar events
    ginIndex('calendar_events', 'tags'),
    btreeIndex('calendar_events', 'provider_event_id'),
    btreeIndex('calendar_events', 'start_time'),
    btreeIndex('calendar_events', 'end_time'),
    btreeIndex('calendar_events', 'status'),
    // btreeIndex('calendar_events', 'calendar_id'), — auto-created by FK (calendars -> calendar_events)
    // btreeIndex('calendar_events', 'organizer_contact_id'), — auto-created by FK (BelongsTo contacts)

    // Calendar attendees
    btreeIndex('calendar_attendees', 'response_status'),
    btreeIndex('calendar_attendees', 'role'),
    // btreeIndex('calendar_attendees', 'calendar_event_id'), — auto-created by FK
    // btreeIndex('calendar_attendees', 'contact_id'), — auto-created by FK (BelongsTo contacts)

    // Provider sync states
    btreeIndex('provider_sync_states', 'provider'),
    btreeIndex('provider_sync_states', 'resource_type'),
    btreeIndex('provider_sync_states', 'status'),
    btreeIndex('provider_sync_states', 'last_sync_at'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Email & Calendar Schema');
}

export { main as default };
