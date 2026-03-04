/**
 * crm.ts — Provision CRM schema tables using platform SDK
 * Includes vector(768) columns for embeddings (Ollama nomic-embed-text)
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../../.env') });

import { createClient } from '../sdk/platform/orm/index';
import { NodeHttpAdapter } from '../sdk/node-http-adapter';
import { withRetry, entityGrants, entityPolicyData } from '../helpers';

const databaseId = process.env.DATABASE_ID;
const accessToken = process.env.ACCESS_TOKEN;

if (!databaseId || !accessToken) {
  console.error('❌ Missing DATABASE_ID or ACCESS_TOKEN in .env');
  process.exit(1);
}

const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
  Authorization: `Bearer ${accessToken}`,
});
const client = createClient({ adapter });

async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision.create({
      data: { databaseId, tableName, nodeType: 'DataEntityMembership', useRls: true, grantRoles: ['authenticated'], grantPrivileges: entityGrants, policyType: 'AuthzEntityMembership', policyPermissive: true, policyData: entityPolicyData },
      select: { id: true, tableId: true },
    }).unwrap()
  );
  const tableId = result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() => client.secureTableProvision.create({ data: { databaseId, tableId, nodeType: 'DataTimestamps', nodeData: { include_id: false } as any }, select: { id: true } }).unwrap());
  console.log(`   ✓ ${tableName}`);
  return tableId;
}

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<string> {
  const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

async function main() {
  console.log('\n📋 Provisioning CRM Schema with Embeddings & Tags (citext[])\n');
  console.log(`   Database ID: ${databaseId}`);

  // 1. Create Image Storage Table (part of CRM module for now to simplify linking)
  console.log('\n🗄️  images...');
  const imagesId = await createOrgTable('images');
  await addField(imagesId, 'url', 'text', { isRequired: true });
  await addField(imagesId, 'meta', 'jsonb');
  await addField(imagesId, 'alt_text', 'text');
  await addField(imagesId, 'caption', 'text');
  await addField(imagesId, 'embedding', 'vector(768)');

  console.log('\n👤 contacts...');
  const contactsId = await createOrgTable('contacts');
  const c_fname = await addField(contactsId, 'first_name', 'text', { isRequired: true });
  const c_lname = await addField(contactsId, 'last_name', 'text');
  const c_email = await addField(contactsId, 'email', 'text');
  await addField(contactsId, 'phone', 'text');
  const c_headline = await addField(contactsId, 'headline', 'text');
  const c_bio = await addField(contactsId, 'bio', 'text');
  await addField(contactsId, 'location', 'text');
  await addField(contactsId, 'tags', 'citext[]');
  await addField(contactsId, 'embedding', 'vector(768)');
  await addField(contactsId, 'main_image_id', 'uuid'); // 1:1 Link

  console.log('\n🏢 companies...');
  const companiesId = await createOrgTable('companies');
  const co_name = await addField(companiesId, 'name', 'text', { isRequired: true });
  await addField(companiesId, 'domain', 'text');
  const co_ind = await addField(companiesId, 'industry', 'text');
  const co_desc = await addField(companiesId, 'description', 'text');
  await addField(companiesId, 'tags', 'citext[]');
  await addField(companiesId, 'embedding', 'vector(768)');
  await addField(companiesId, 'main_image_id', 'uuid'); // 1:1 Link

  console.log('\n💰 deals...');
  const dealsId = await createOrgTable('deals');
  const d_name = await addField(dealsId, 'name', 'text', { isRequired: true });
  await addField(dealsId, 'stage', 'text', { defaultValue: "'lead'" });
  await addField(dealsId, 'value', 'numeric');
  const d_notes = await addField(dealsId, 'notes', 'text');
  await addField(dealsId, 'tags', 'citext[]');
  await addField(dealsId, 'embedding', 'vector(768)');

  console.log('\n📅 events...');
  const eventsId = await createOrgTable('events');
  const e_name = await addField(eventsId, 'name', 'text', { isRequired: true });
  await addField(eventsId, 'event_type', 'text');
  await addField(eventsId, 'location', 'text');
  await addField(eventsId, 'city', 'text');
  await addField(eventsId, 'started_at', 'timestamptz');
  await addField(eventsId, 'ended_at', 'timestamptz');
  const e_notes = await addField(eventsId, 'notes', 'text');
  await addField(eventsId, 'tags', 'citext[]');
  await addField(eventsId, 'embedding', 'vector(768)');
  await addField(eventsId, 'main_image_id', 'uuid'); // 1:1 Link

  console.log('\n🏛️ venues...');
  const venuesId = await createOrgTable('venues');
  const v_name = await addField(venuesId, 'name', 'text', { isRequired: true });
  await addField(venuesId, 'neighborhood', 'text');
  await addField(venuesId, 'city', 'text');
  await addField(venuesId, 'status', 'text', { defaultValue: "'potential'" });
  const v_notes = await addField(venuesId, 'notes', 'text');
  await addField(venuesId, 'tags', 'citext[]');
  await addField(venuesId, 'embedding', 'vector(768)');
  await addField(venuesId, 'main_image_id', 'uuid'); // 1:1 Link

  console.log('\n📝 notes...');
  const notesId = await createOrgTable('notes');
  const n_content = await addField(notesId, 'content', 'text', { isRequired: true });
  await addField(notesId, 'tags', 'citext[]');
  await addField(notesId, 'embedding', 'vector(768)');

  console.log('\n🔗 Relations...');

  // 1:1 Main Image Links
  const linkImage = async (sourceId: string, name: string) => {
    await withRetry(() => client.relationProvision.create({
      data: { databaseId, relationType: 'RelationBelongsTo', sourceTableId: sourceId, targetTableId: imagesId, sourceFieldName: 'main_image_id', targetFieldName: 'id', deleteAction: 'n' }, // Set NULL on delete
      select: { id: true },
    }).unwrap());
    console.log(`   ✓ ${name} → images (main_image)`);
  };

  await linkImage(contactsId, 'contacts');
  await linkImage(companiesId, 'companies');
  await linkImage(eventsId, 'events');
  await linkImage(venuesId, 'venues');

  // M:N Gallery Links
  const linkGallery = async (sourceId: string, sourceName: string, junctionName: string, sourceField: string) => {
    await withRetry(() => client.relationProvision.create({
      data: { 
        databaseId, 
        relationType: 'RelationManyToMany', 
        sourceTableId: sourceId, 
        targetTableId: imagesId, 
        junctionTableName: junctionName, 
        sourceFieldName: sourceField, 
        targetFieldName: 'image_id', 
        nodeType: 'DataEntityMembership', 
        policyType: 'AuthzEntityMembership', 
        policyPermissive: true, 
        policyData: entityPolicyData, 
        grantRoles: ['authenticated'], 
        grantPrivileges: [['select', '*'], ['insert', '*'], ['delete', '*']] as any 
      },
      select: { id: true },
    }).unwrap());
    console.log(`   ✓ ${sourceName} ↔ images (${junctionName})`);
  };

  await linkGallery(contactsId, 'contacts', 'contact_images', 'contact_id');
  await linkGallery(companiesId, 'companies', 'company_images', 'company_id');
  await linkGallery(eventsId, 'events', 'event_images', 'event_id');
  await linkGallery(venuesId, 'venues', 'venue_images', 'venue_id');

  // Existing Relations
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: contactsId, targetTableId: notesId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ contacts → notes');

  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationManyToMany', sourceTableId: contactsId, targetTableId: companiesId, junctionTableName: 'contact_companies', sourceFieldName: 'contact_id', targetFieldName: 'company_id', nodeType: 'DataEntityMembership', policyType: 'AuthzEntityMembership', policyPermissive: true, policyData: entityPolicyData, grantRoles: ['authenticated'], grantPrivileges: [['select', '*'], ['insert', '*'], ['delete', '*']] as any },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ contacts ↔ companies');

  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationManyToMany', sourceTableId: contactsId, targetTableId: eventsId, junctionTableName: 'contact_events', sourceFieldName: 'contact_id', targetFieldName: 'event_id', nodeType: 'DataEntityMembership', policyType: 'AuthzEntityMembership', policyPermissive: true, policyData: entityPolicyData, grantRoles: ['authenticated'], grantPrivileges: [['select', '*'], ['insert', '*'], ['delete', '*']] as any },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ contacts ↔ events');

  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationManyToMany', sourceTableId: eventsId, targetTableId: venuesId, junctionTableName: 'event_venues', sourceFieldName: 'event_id', targetFieldName: 'venue_id', nodeType: 'DataEntityMembership', policyType: 'AuthzEntityMembership', policyPermissive: true, policyData: entityPolicyData, grantRoles: ['authenticated'], grantPrivileges: [['select', '*'], ['insert', '*'], ['delete', '*']] as any },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ events ↔ venues');

  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationManyToMany', sourceTableId: dealsId, targetTableId: contactsId, junctionTableName: 'deal_contacts', sourceFieldName: 'deal_id', targetFieldName: 'contact_id', nodeType: 'DataEntityMembership', policyType: 'AuthzEntityMembership', policyPermissive: true, policyData: entityPolicyData, grantRoles: ['authenticated'], grantPrivileges: [['select', '*'], ['insert', '*'], ['delete', '*']] as any },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ deals ↔ contacts');

  console.log('\n✅ CRM Schema with Images, Embeddings & Tags complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
