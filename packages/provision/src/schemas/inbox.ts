/**
 * inbox.ts — Raw message ingestion + triage (blueprint definition)
 *
 * Tables: raw_messages, raw_message_attachments
 *
 * A provider-agnostic staging area for messages pulled from any network
 * (email, twitter, linkedin, discord, slack, sms, ...). Rows land here
 * untouched (`raw_data` keeps the full provider payload) with
 * triage_status = 'pending' and NO embeddings — storage is cheap and
 * nothing enters the RAG pipeline until it is promoted.
 *
 * Triage lifecycle (triage_status): pending -> triaged -> promoted,
 * or -> ignored / spam. Promotion inserts the keeper into the curated
 * tables (emails / conversations+messages), which auto-embed via their
 * SearchUnified triggers; promoted_email_id / promoted_conversation_id
 * record the lineage on the raw row.
 *
 * Must run AFTER crm (contacts), runtime (conversations), and
 * email_calendar (emails) so the BelongsTo targets exist.
 */

import {
  type BlueprintDefinition,
  provisionBlueprint,
} from '../blueprint';

const SCHEMA = 'app_public';

const definition: BlueprintDefinition = {
  tables: [
    // -- Raw Messages -------------------------------------------------------
    {
      ref: 'raw_messages',
      table_name: 'raw_messages',
      nodes: ['DataId', 'DataTimestamps'],
      fields: [
        // Provenance
        { name: 'provider', type: 'text', is_required: true },
        { name: 'external_id', type: 'text' },
        { name: 'external_thread_id', type: 'text' },
        // Normalized common shape (provider-specific detail stays in raw_data)
        { name: 'sender_handle', type: 'text' },
        { name: 'sender_display_name', type: 'text' },
        { name: 'recipients', type: 'jsonb' },
        { name: 'subject', type: 'text' },
        { name: 'body_text', type: 'text' },
        { name: 'sent_at', type: 'timestamptz' },
        { name: 'raw_data', type: 'jsonb' },
        // Triage
        { name: 'triage_status', type: 'text', default_value: "'pending'" },
        { name: 'triage_score', type: 'numeric' },
        { name: 'triage_notes', type: 'text' },
        { name: 'labels', type: 'citext[]' },
        { name: 'ingested_at', type: 'timestamptz', default_value: 'now()' },
      ],
    },

    // -- Raw Message Attachments ---------------------------------------------
    {
      ref: 'raw_message_attachments',
      table_name: 'raw_message_attachments',
      nodes: ['DataId', 'DataTimestamps'],
      fields: [
        { name: 'filename', type: 'text' },
        { name: 'content_type', type: 'text' },
        { name: 'size_bytes', type: 'int' },
        { name: 'storage_url', type: 'text' },
        { name: 'provider_attachment_id', type: 'text' },
      ],
    },
  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'raw_messages', target_ref: 'raw_message_attachments', delete_action: 'c' },

    // Sender identity (matched during triage)
    {
      $type: 'RelationBelongsTo',
      source_ref: 'raw_messages',
      source_schema_name: SCHEMA,
      target_table: 'contacts',
      target_schema_name: SCHEMA,
      field_name: 'sender_contact_id',
      delete_action: 'n',
      is_required: false,
    },
    // Promotion lineage into the curated tables
    {
      $type: 'RelationBelongsTo',
      source_ref: 'raw_messages',
      source_schema_name: SCHEMA,
      target_table: 'emails',
      target_schema_name: SCHEMA,
      field_name: 'promoted_email_id',
      delete_action: 'n',
      is_required: false,
    },
    {
      $type: 'RelationBelongsTo',
      source_ref: 'raw_messages',
      source_schema_name: SCHEMA,
      target_table: 'conversations',
      target_schema_name: SCHEMA,
      field_name: 'promoted_conversation_id',
      delete_action: 'n',
      is_required: false,
    },
  ],

  indexes: [
    { table_ref: 'raw_messages', column: 'provider', access_method: 'btree' },
    { table_ref: 'raw_messages', column: 'external_id', access_method: 'btree' },
    { table_ref: 'raw_messages', column: 'external_thread_id', access_method: 'btree' },
    { table_ref: 'raw_messages', column: 'triage_status', access_method: 'btree' },
    { table_ref: 'raw_messages', column: 'sent_at', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Inbox (raw messages + triage)');
}

export { main as default };
