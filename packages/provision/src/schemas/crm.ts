/**
 * crm.ts \u2014 CRM domain schema
 *
 * Tables: images, contacts, companies, deals, events, venues, notes, interactions
 * Link tables: contact_links, company_links, event_links, venue_links
 * Relations: M:N junctions, HasMany, BelongsTo (images)
 */

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
  entityGrants,
  entityPolicyData,
} from '../helpers';

const databaseId = requireDatabaseId();
const client = createPlatformClient();

// ---------------------------------------------------------------------------
// Table + field helpers
// ---------------------------------------------------------------------------

async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision
      .create({
        data: {
          databaseId,
          tableName,
          nodeType: 'DataEntityMembership',
          useRls: true,
          grantRoles: ['authenticated'],
          grantPrivileges: entityGrants,
          policyType: 'AuthzEntityMembership',
          policyPermissive: true,
          policyData: entityPolicyData,
        },
        select: { id: true, tableId: true },
      })
      .unwrap()
  );
  const tableId =
    result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() =>
    client.secureTableProvision
      .create({
        data: {
          databaseId,
          tableId,
          nodeType: 'DataTimestamps',
          nodeData: { include_id: false } as any,
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log(`   \u2713 ${tableName}`);
  return tableId;
}

async function addField(
  tableId: string,
  name: string,
  type: string,
  opts: { isRequired?: boolean; defaultValue?: string } = {}
): Promise<string> {
  const result = await withRetry(() =>
    client.field
      .create({
        data: {
          tableId,
          name,
          type,
          isRequired: opts.isRequired ?? false,
          label: name,
          ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}),
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  console.log('\n\ud83d\udccb CRM Schema\n');

  // -- Images ---------------------------------------------------------------
  console.log('\ud83d\uddbc\ufe0f  images...');
  const imagesId = await createOrgTable('images');
  await addField(imagesId, 'url', 'text', { isRequired: true });
  await addField(imagesId, 'meta', 'jsonb');
  await addField(imagesId, 'alt_text', 'text');
  await addField(imagesId, 'caption', 'text');
  await addField(imagesId, 'embedding', 'vector(768)');

  // -- Contacts -------------------------------------------------------------
  console.log('\n\ud83d\udc64 contacts...');
  const contactsId = await createOrgTable('contacts');
  await addField(contactsId, 'first_name', 'text', { isRequired: true });
  await addField(contactsId, 'last_name', 'text');
  await addField(contactsId, 'email', 'text');
  await addField(contactsId, 'phone', 'text');
  await addField(contactsId, 'headline', 'text');
  await addField(contactsId, 'bio', 'text');
  await addField(contactsId, 'location', 'text');
  await addField(contactsId, 'birthday', 'date');
  await addField(contactsId, 'relationship_type', 'text');
  await addField(contactsId, 'how_we_met', 'text');
  await addField(contactsId, 'twitter_handle', 'text');
  await addField(contactsId, 'linkedin_url', 'text');
  await addField(contactsId, 'github_username', 'text');
  await addField(contactsId, 'instagram_handle', 'text');
  await addField(contactsId, 'website', 'text');
  await addField(contactsId, 'location_geo', 'geography(Point,4326)');
  await addField(contactsId, 'tags', 'citext[]');
  await addField(contactsId, 'embedding_text', 'text');
  await addField(contactsId, 'embedding', 'vector(768)');
  await addField(contactsId, 'search_tsv', 'tsvector');
  await addField(contactsId, 'main_image_id', 'uuid');

  // -- Companies ------------------------------------------------------------
  console.log('\n\ud83c\udfe2 companies...');
  const companiesId = await createOrgTable('companies');
  await addField(companiesId, 'name', 'text', { isRequired: true });
  await addField(companiesId, 'domain', 'text');
  await addField(companiesId, 'industry', 'text');
  await addField(companiesId, 'description', 'text');
  await addField(companiesId, 'tags', 'citext[]');
  await addField(companiesId, 'embedding_text', 'text');
  await addField(companiesId, 'embedding', 'vector(768)');
  await addField(companiesId, 'search_tsv', 'tsvector');
  await addField(companiesId, 'main_image_id', 'uuid');

  // -- Deals ----------------------------------------------------------------
  console.log('\n\ud83d\udcb0 deals...');
  const dealsId = await createOrgTable('deals');
  await addField(dealsId, 'name', 'text', { isRequired: true });
  await addField(dealsId, 'stage', 'text', { defaultValue: "'lead'" });
  await addField(dealsId, 'value', 'numeric');
  await addField(dealsId, 'currency', 'text', { defaultValue: "'USD'" });
  await addField(dealsId, 'expected_close_date', 'timestamptz');
  await addField(dealsId, 'notes', 'text');
  await addField(dealsId, 'tags', 'citext[]');
  await addField(dealsId, 'embedding_text', 'text');
  await addField(dealsId, 'embedding', 'vector(768)');

  // -- Events ---------------------------------------------------------------
  console.log('\n\ud83d\udcc5 events...');
  const eventsId = await createOrgTable('events');
  await addField(eventsId, 'name', 'text', { isRequired: true });
  await addField(eventsId, 'event_type', 'text');
  await addField(eventsId, 'location', 'text');
  await addField(eventsId, 'city', 'text');
  await addField(eventsId, 'started_at', 'timestamptz');
  await addField(eventsId, 'ended_at', 'timestamptz');
  await addField(eventsId, 'notes', 'text');
  await addField(eventsId, 'tags', 'citext[]');
  await addField(eventsId, 'embedding_text', 'text');
  await addField(eventsId, 'embedding', 'vector(768)');
  await addField(eventsId, 'search_tsv', 'tsvector');
  await addField(eventsId, 'main_image_id', 'uuid');

  // -- Venues ---------------------------------------------------------------
  console.log('\n\ud83c\udfdb\ufe0f  venues...');
  const venuesId = await createOrgTable('venues');
  await addField(venuesId, 'name', 'text', { isRequired: true });
  await addField(venuesId, 'address', 'text');
  await addField(venuesId, 'neighborhood', 'text');
  await addField(venuesId, 'city', 'text');
  await addField(venuesId, 'category', 'text');
  await addField(venuesId, 'status', 'text', { defaultValue: "'potential'" });
  await addField(venuesId, 'location', 'geography(Point,4326)');
  await addField(venuesId, 'google_place_id', 'text');
  await addField(venuesId, 'rating', 'numeric');
  await addField(venuesId, 'price_level', 'text');
  await addField(venuesId, 'is_favorite', 'bool', { defaultValue: 'false' });
  await addField(venuesId, 'notes', 'text');
  await addField(venuesId, 'tags', 'citext[]');
  await addField(venuesId, 'embedding_text', 'text');
  await addField(venuesId, 'embedding', 'vector(768)');
  await addField(venuesId, 'search_tsv', 'tsvector');
  await addField(venuesId, 'main_image_id', 'uuid');

  // -- Notes (polymorphic) --------------------------------------------------
  console.log('\n\ud83d\udcdd notes...');
  const notesId = await createOrgTable('notes');
  await addField(notesId, 'content', 'text', { isRequired: true });
  await addField(notesId, 'notable_type', 'text');
  await addField(notesId, 'notable_id', 'uuid');
  await addField(notesId, 'tags', 'citext[]');
  await addField(notesId, 'embedding_text', 'text');
  await addField(notesId, 'embedding', 'vector(768)');

  // -- Interactions (contact activity log) ----------------------------------
  console.log('\n\ud83e\udd1d interactions...');
  const interactionsId = await createOrgTable('interactions');
  await addField(interactionsId, 'contact_id', 'uuid', { isRequired: true });
  await addField(interactionsId, 'type', 'text', { isRequired: true });
  await addField(interactionsId, 'occurred_at', 'timestamptz', {
    isRequired: true,
  });
  await addField(interactionsId, 'summary', 'text');
  await addField(interactionsId, 'sentiment', 'text');
  await addField(interactionsId, 'tags', 'citext[]');
  await addField(interactionsId, 'embedding_text', 'text');
  await addField(interactionsId, 'embedding', 'vector(768)');

  // -- Tags (centralized) ---------------------------------------------------
  console.log('\n\ud83c\udff7\ufe0f  tags...');
  const tagsId = await createOrgTable('tags');
  await addField(tagsId, 'name', 'text', { isRequired: true });
  await addField(tagsId, 'color', 'text');
  await addField(tagsId, 'category', 'text');
  await addField(tagsId, 'usage_count', 'int', { defaultValue: '0' });
  // No embeddings — tags are exact-match lookups

  // -- Attachments (polymorphic) --------------------------------------------
  console.log('\n\ud83d\udcce attachments...');
  const attachmentsId = await createOrgTable('attachments');
  await addField(attachmentsId, 'url', 'text', { isRequired: true });
  await addField(attachmentsId, 'filename', 'text');
  await addField(attachmentsId, 'mime_type', 'text');
  await addField(attachmentsId, 'size_bytes', 'int');
  await addField(attachmentsId, 'attachable_type', 'text');
  await addField(attachmentsId, 'attachable_id', 'uuid');
  // No embeddings — file metadata, not searchable content

  // -- Link tables ----------------------------------------------------------
  console.log('\n\ud83d\udd17 link tables...');
  const createLinkTable = async (name: string) => {
    const tableId = await createOrgTable(name);
    await addField(tableId, 'title', 'text');
    await addField(tableId, 'url', 'text', { isRequired: true });
    await addField(tableId, 'embedding', 'vector(768)');
    return tableId;
  };

  const contactLinksId = await createLinkTable('contact_links');
  const companyLinksId = await createLinkTable('company_links');
  const eventLinksId = await createLinkTable('event_links');
  const venueLinksId = await createLinkTable('venue_links');

  // =========================================================================
  // Relations
  // =========================================================================
  console.log('\n\ud83d\udd17 Relations...');

  const linkImage = async (sourceId: string, label: string) => {
    await withRetry(() =>
      client.relationProvision
        .create({
          data: {
            databaseId,
            relationType: 'RelationBelongsTo',
            sourceTableId: sourceId,
            targetTableId: imagesId,
            fieldName: 'main_image_id',
            sourceFieldName: 'main_image_id',
            targetFieldName: 'id',
            deleteAction: 'n',
            isRequired: false,
          },
          select: { id: true },
        })
        .unwrap()
    );
    console.log(`   \u2713 ${label} -> images (main_image)`);
  };

  await linkImage(contactsId, 'contacts');
  await linkImage(companiesId, 'companies');
  await linkImage(eventsId, 'events');
  await linkImage(venuesId, 'venues');

  const m2mOpts = {
    nodeType: 'DataEntityMembership',
    policyType: 'AuthzEntityMembership',
    policyPermissive: true,
    policyData: entityPolicyData,
    grantRoles: ['authenticated'],
    grantPrivileges: [
      ['select', '*'],
      ['insert', '*'],
      ['delete', '*'],
    ] as any,
  };


  const linkGallery = async (
    sourceId: string,
    label: string,
    junctionName: string,
    sourceField: string
  ) => {
    await withRetry(() =>
      client.relationProvision
        .create({
          data: {
            databaseId,
            relationType: 'RelationManyToMany',
            sourceTableId: sourceId,
            targetTableId: imagesId,
            junctionTableName: junctionName,
            sourceFieldName: sourceField,
            targetFieldName: 'image_id',
            isRequired: false,
            ...m2mOpts,
          },
          select: { id: true },
        })
        .unwrap()
    );
    console.log(`   \u2713 ${label} <-> images (${junctionName})`);
  };

  await linkGallery(contactsId, 'contacts', 'contact_images', 'contact_id');
  await linkGallery(companiesId, 'companies', 'company_images', 'company_id');
  await linkGallery(eventsId, 'events', 'event_images', 'event_id');
  await linkGallery(venuesId, 'venues', 'venue_images', 'venue_id');

  const hasMany = async (sourceId: string, targetId: string, label: string) => {
    await withRetry(() =>
      client.relationProvision
        .create({
          data: {
            databaseId,
            relationType: 'RelationHasMany',
            sourceTableId: sourceId,
            targetTableId: targetId,
            deleteAction: 'c',
          },
          select: { id: true },
        })
        .unwrap()
    );
    console.log(`   \u2713 ${label}`);
  };

  await hasMany(contactsId, interactionsId, 'contacts -> interactions');
  await hasMany(contactsId, contactLinksId, 'contacts -> contact_links');
  await hasMany(companiesId, companyLinksId, 'companies -> company_links');
  await hasMany(eventsId, eventLinksId, 'events -> event_links');
  await hasMany(venuesId, venueLinksId, 'venues -> venue_links');

  const manyToMany = async (
    sourceId: string,
    targetId: string,
    junction: string,
    srcField: string,
    tgtField: string,
    label: string
  ) => {
    await withRetry(() =>
      client.relationProvision
        .create({
          data: {
            databaseId,
            relationType: 'RelationManyToMany',
            sourceTableId: sourceId,
            targetTableId: targetId,
            junctionTableName: junction,
            sourceFieldName: srcField,
            targetFieldName: tgtField,
            isRequired: false,
            ...m2mOpts,
          },
          select: { id: true },
        })
        .unwrap()
    );
    console.log(`   \u2713 ${label}`);
  };

  await manyToMany(contactsId, companiesId, 'contact_companies', 'contact_id', 'company_id', 'contacts <-> companies');
  await manyToMany(contactsId, eventsId, 'contact_events', 'contact_id', 'event_id', 'contacts <-> events');
  await manyToMany(companiesId, eventsId, 'company_events', 'company_id', 'event_id', 'companies <-> events');
  await manyToMany(eventsId, venuesId, 'event_venues', 'event_id', 'venue_id', 'events <-> venues');
  await manyToMany(dealsId, contactsId, 'deal_contacts', 'deal_id', 'contact_id', 'deals <-> contacts');

  console.log('\n\u2705 CRM Schema complete!\n');
}

main().catch((err) => {
  console.error('\u274c', err.message ?? err);
  process.exit(1);
});
