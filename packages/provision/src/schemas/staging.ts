/**
 * staging.ts — Raw staging tables for contact data import (blueprint definition)
 *
 * Tables: raw_contacts, raw_contact_emails, raw_contact_phones, raw_contact_urls
 * No embeddings — pure storage for unprocessed data.
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
    // -- Raw Contacts -------------------------------------------------------
    {
      ref: 'raw_contacts',
      table_name: 'raw_contacts',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'external_id', type: 'text' },
        { name: 'source', type: 'text' },
        { name: 'first_name', type: 'text' },
        { name: 'last_name', type: 'text' },
        { name: 'full_name', type: 'text' },
        { name: 'headline', type: 'text' },
        { name: 'bio', type: 'text' },
        { name: 'location', type: 'text' },
        { name: 'company', type: 'text' },
        { name: 'job_title', type: 'text' },
        { name: 'raw_data', type: 'jsonb' },
        { name: 'confidence', type: 'numeric' },
        { name: 'ingested_at', type: 'timestamptz', default_value: 'now()' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Raw Contact Emails -------------------------------------------------
    {
      ref: 'raw_contact_emails',
      table_name: 'raw_contact_emails',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'email', type: 'text', is_not_null: true },
        { name: 'email_type', type: 'text' },
        { name: 'is_primary', type: 'bool', default_value: 'false' },
        { name: 'source', type: 'text' },
        { name: 'confidence', type: 'numeric' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Raw Contact Phones -------------------------------------------------
    {
      ref: 'raw_contact_phones',
      table_name: 'raw_contact_phones',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'phone', type: 'text', is_not_null: true },
        { name: 'phone_type', type: 'text' },
        { name: 'is_primary', type: 'bool', default_value: 'false' },
        { name: 'source', type: 'text' },
        { name: 'confidence', type: 'numeric' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Raw Contact URLs ---------------------------------------------------
    {
      ref: 'raw_contact_urls',
      table_name: 'raw_contact_urls',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'url', type: 'text', is_not_null: true },
        { name: 'url_type', type: 'text' },
        { name: 'source', type: 'text' },
        { name: 'confidence', type: 'numeric' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'raw_contacts', target_ref: 'raw_contact_emails', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'raw_contacts', target_ref: 'raw_contact_phones', delete_action: 'c' },
    { $type: 'RelationHasMany', source_ref: 'raw_contacts', target_ref: 'raw_contact_urls',   delete_action: 'c' },
  ],

  indexes: [
    { table_ref: 'raw_contacts', column: 'external_id', access_method: 'btree' },
    { table_ref: 'raw_contacts', column: 'source', access_method: 'btree' },
    { table_ref: 'raw_contact_emails', column: 'email', access_method: 'btree' },
    { table_ref: 'raw_contact_phones', column: 'phone', access_method: 'btree' },
    { table_ref: 'raw_contact_urls', column: 'url', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Staging Schema');
}

export { main as default };
