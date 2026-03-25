/**
 * staging.ts - Raw data staging area (blueprint definition)
 *
 * Simple storage tables for raw imported data before enrichment/dedup.
 * No embeddings, no search — just flexible storage with indexes for matching.
 */

import {
  type BlueprintDefinition,
  orgTable,
  provisionBlueprint,
  f,
  req,
  btreeIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Raw Contacts (staging) ---------------------------------------------
    orgTable('raw_contacts', [
      f('external_id', 'text'),
      f('source', 'text'),
      f('first_name', 'text'),
      f('last_name', 'text'),
      f('email', 'text'),
      f('phone', 'text'),
      f('company', 'text'),
      f('title', 'text'),
      f('location', 'text'),
      f('linkedin_url', 'text'),
      f('twitter_handle', 'text'),
      f('website', 'text'),
      f('confidence', 'numeric'),
      f('raw_data', 'jsonb'),
      f('ingested_at', 'timestamptz'),
    ]),

    // -- Raw Contact Emails -------------------------------------------------
    orgTable('raw_contact_emails', [
      req('raw_contact_id', 'uuid'),
      req('email', 'text'),
      f('email_type', 'text'),
      f('is_primary', 'bool', { default_value: 'false' }),
      f('source', 'text'),
      f('confidence', 'numeric'),
      f('ingested_at', 'timestamptz'),
    ]),

    // -- Raw Contact Phones -------------------------------------------------
    orgTable('raw_contact_phones', [
      req('raw_contact_id', 'uuid'),
      req('phone', 'text'),
      f('phone_type', 'text'),
      f('is_primary', 'bool', { default_value: 'false' }),
      f('source', 'text'),
      f('confidence', 'numeric'),
      f('ingested_at', 'timestamptz'),
    ]),

    // -- Raw Contact URLs ---------------------------------------------------
    orgTable('raw_contact_urls', [
      req('raw_contact_id', 'uuid'),
      req('url', 'text'),
      f('url_type', 'text'),
      f('source', 'text'),
      f('confidence', 'numeric'),
      f('ingested_at', 'timestamptz'),
    ]),
  ],

  relations: [
    // Children belong to raw_contacts
    { $type: 'RelationHasMany', source_ref: 'raw_contacts', target_ref: 'raw_contact_emails', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'raw_contacts', target_ref: 'raw_contact_phones', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'raw_contacts', target_ref: 'raw_contact_urls',   delete_action: 'c' },
  ],

  indexes: [
    // raw_contacts lookups
    btreeIndex('raw_contacts', 'external_id'),
    btreeIndex('raw_contacts', 'source'),
    btreeIndex('raw_contacts', 'email'),
    btreeIndex('raw_contacts', 'phone'),
    btreeIndex('raw_contacts', 'linkedin_url'),
    btreeIndex('raw_contacts', 'ingested_at'),

    // raw_contact_emails matching
    btreeIndex('raw_contact_emails', 'email'),
    btreeIndex('raw_contact_emails', 'source'),

    // raw_contact_phones matching
    btreeIndex('raw_contact_phones', 'phone'),
    btreeIndex('raw_contact_phones', 'source'),

    // raw_contact_urls matching
    btreeIndex('raw_contact_urls', 'url'),
    btreeIndex('raw_contact_urls', 'source'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Staging Schema');
}

export { main as default };
