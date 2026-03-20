/**
 * life_os.ts — Life OS domain schema (blueprint definition)
 *
 * Tables: email_accounts, messages, calendar_accounts, calendar_events,
 *         expenses, documents, integrations, webhooks, user_settings,
 *         billing_subscriptions, trips
 * Chunk tables: message_chunks, calendar_event_chunks, document_chunks, trip_chunks
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
} from '../blueprint';

// ---------------------------------------------------------------------------
// Blueprint definition
// ---------------------------------------------------------------------------

const definition: BlueprintDefinition = {
  tables: [
    // -- Email Accounts -------------------------------------------------------
    orgTable('email_accounts', [
      req('email', 'text'),
      f('provider', 'text'),
      f('sync_state', 'jsonb'),
    ]),

    // -- Messages -------------------------------------------------------------
    orgTable('messages', [
      f('email_account_id', 'uuid'),
      f('thread_id', 'text'),
      f('remote_id', 'text'),
      f('from_address', 'text'),
      f('to_addresses', 'text[]'),
      f('subject', 'text'),
      f('body_text', 'text'),
      f('received_at', 'timestamptz'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Calendar Accounts ----------------------------------------------------
    orgTable('calendar_accounts', [
      req('email', 'text'),
      f('provider', 'text'),
      f('sync_token', 'text'),
      f('last_synced_at', 'timestamptz'),
    ]),

    // -- Calendar Events ------------------------------------------------------
    orgTable('calendar_events', [
      f('calendar_account_id', 'uuid'),
      f('remote_id', 'text'),
      req('title', 'text'),
      f('description', 'text'),
      req('start_at', 'timestamptz'),
      f('end_at', 'timestamptz'),
      f('all_day', 'bool', { default_value: 'false' }),
      f('location', 'text'),
      f('recurrence_rule', 'text'),
      f('status', 'text', { default_value: "'confirmed'" }),
      f('location_geo', 'geography(Point,4326)'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Expenses -------------------------------------------------------------
    orgTable('expenses', [
      f('amount', 'numeric'),
      f('currency', 'text', { default_value: "'USD'" }),
      f('date', 'date'),
      f('category', 'text'),
      f('description', 'text'),
      f('merchant', 'text'),
      f('receipt_url', 'text'),
      f('is_recurring', 'bool', { default_value: 'false' }),
      f('tags', 'citext[]'),
    ]),

    // -- Documents ------------------------------------------------------------
    orgTable('documents', [
      req('title', 'text'),
      f('url', 'text'),
      f('content', 'text'),
      f('source_type', 'text'),
      f('is_read', 'bool', { default_value: 'false' }),
      f('saved_at', 'timestamptz'),
      f('parent_document_id', 'uuid'),
      f('abstract', 'text'),
      f('overview', 'text'),
      f('active_count', 'int', { default_value: '0' }),
      f('last_accessed_at', 'timestamptz'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
      f('search_tsv', 'tsvector'),
    ]),

    // -- Integrations ---------------------------------------------------------
    orgTable('integrations', [
      req('name', 'text'),
      req('provider', 'text'),
      f('type', 'text'),
      f('credentials_ref', 'text'),
      f('config', 'jsonb'),
      f('status', 'text', { default_value: "'active'" }),
      f('last_synced_at', 'timestamptz'),
    ]),

    // -- Webhooks -------------------------------------------------------------
    orgTable('webhooks', [
      f('integration_id', 'uuid'),
      req('url', 'text'),
      req('event_type', 'text'),
      f('secret', 'text'),
      f('is_active', 'bool', { default_value: 'true' }),
    ]),

    // -- User Settings --------------------------------------------------------
    orgTable('user_settings', [
      req('key', 'text'),
      f('value', 'jsonb'),
      f('category', 'text'),
    ]),

    // -- Billing Subscriptions ------------------------------------------------
    orgTable('billing_subscriptions', [
      req('name', 'text'),
      f('amount', 'numeric'),
      f('currency', 'text', { default_value: "'USD'" }),
      f('frequency', 'text'),
      f('provider', 'text'),
      f('next_billing_date', 'date'),
      f('cancellation_date', 'date'),
      f('status', 'text', { default_value: "'active'" }),
      f('tags', 'citext[]'),
      f('notes', 'text'),
    ]),

    // -- Trips ----------------------------------------------------------------
    orgTable('trips', [
      req('name', 'text'),
      f('destination', 'text'),
      f('start_date', 'date'),
      f('end_date', 'date'),
      f('status', 'text', { default_value: "'planned'" }),
      f('notes', 'text'),
      f('destination_geo', 'geography(Point,4326)'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Chunk tables ---------------------------------------------------------
    chunkTable('messages'),
    chunkTable('calendar_events'),
    chunkTable('documents'),
    chunkTable('trips'),
  ],

  relations: [
    // email_accounts -> messages (HasMany)
    { $type: 'RelationHasMany', source_ref: 'email_accounts',    target_ref: 'messages',        delete_action: 'c' },
    // calendar_accounts -> calendar_events (HasMany)
    { $type: 'RelationHasMany', source_ref: 'calendar_accounts', target_ref: 'calendar_events', delete_action: 'c' },
    // integrations -> webhooks (HasMany)
    { $type: 'RelationHasMany', source_ref: 'integrations',      target_ref: 'webhooks',        delete_action: 'c' },

    // Chunk table relations (parent -> chunks, CASCADE delete)
    hasManyChunks('messages'),
    hasManyChunks('calendar_events'),
    hasManyChunks('documents'),
    hasManyChunks('trips'),
  ],
};

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  await provisionBlueprint(definition, 'Life OS Schema');
}

export { main as default };
