/**
 * crm.ts — Provision CRM schema tables using inline fields on secureTableProvision
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
  console.error('Missing DATABASE_ID or ACCESS_TOKEN in .env');
  process.exit(1);
}

const PLATFORM_ENDPOINT = 'http://[::1]:3000/graphql';
const PLATFORM_HOST = 'api.localhost';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  Host: PLATFORM_HOST,
  Authorization: `Bearer ${accessToken}`,
});
const client = createClient({ adapter });

interface FieldDef {
  name: string;
  type: string;
  is_required?: boolean;
  default?: string;
}

async function createOrgTable(tableName: string, fields: FieldDef[] = []): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision.create({
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
        ...(fields.length > 0 ? { fields: fields as any } : {}),
      },
      select: { id: true, tableId: true },
    }).unwrap()
  );
  const tableId = result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() => client.secureTableProvision.create({ data: { databaseId, tableId, nodeType: 'DataTimestamps', nodeData: { include_id: false } as any }, select: { id: true } }).unwrap());
  console.log(`   + ${tableName} (${fields.length} fields)`);
  return tableId;
}

async function main() {
  console.log('\nProvisioning CRM Schema\n');
  console.log(`   Database ID: ${databaseId}`);

  const imagesId = await createOrgTable('images', [
    { name: 'url', type: 'text', is_required: true },
    { name: 'meta', type: 'jsonb' },
    { name: 'alt_text', type: 'text' },
    { name: 'caption', type: 'text' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const contactsId = await createOrgTable('contacts', [
    { name: 'first_name', type: 'text', is_required: true },
    { name: 'last_name', type: 'text' },
    { name: 'email', type: 'text' },
    { name: 'phone', type: 'text' },
    { name: 'headline', type: 'text' },
    { name: 'bio', type: 'text' },
    { name: 'location', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
    { name: 'main_image_id', type: 'uuid' },
  ]);

  const companiesId = await createOrgTable('companies', [
    { name: 'name', type: 'text', is_required: true },
    { name: 'domain', type: 'text' },
    { name: 'industry', type: 'text' },
    { name: 'description', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
    { name: 'main_image_id', type: 'uuid' },
  ]);

  const dealsId = await createOrgTable('deals', [
    { name: 'name', type: 'text', is_required: true },
    { name: 'stage', type: 'text', default: "'lead'" },
    { name: 'value', type: 'numeric' },
    { name: 'notes', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const eventsId = await createOrgTable('events', [
    { name: 'name', type: 'text', is_required: true },
    { name: 'event_type', type: 'text' },
    { name: 'location', type: 'text' },
    { name: 'city', type: 'text' },
    { name: 'started_at', type: 'timestamptz' },
    { name: 'ended_at', type: 'timestamptz' },
    { name: 'notes', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
    { name: 'main_image_id', type: 'uuid' },
  ]);

  const venuesId = await createOrgTable('venues', [
    { name: 'name', type: 'text', is_required: true },
    { name: 'neighborhood', type: 'text' },
    { name: 'city', type: 'text' },
    { name: 'status', type: 'text', default: "'potential'" },
    { name: 'notes', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
    { name: 'main_image_id', type: 'uuid' },
  ]);

  const notesId = await createOrgTable('notes', [
    { name: 'content', type: 'text', is_required: true },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  const linkFields: FieldDef[] = [
    { name: 'title', type: 'text' },
    { name: 'url', type: 'text', is_required: true },
    { name: 'embedding', type: 'vector(768)' },
  ];
  const contactLinksId = await createOrgTable('contact_links', linkFields);
  const companyLinksId = await createOrgTable('company_links', linkFields);
  const eventLinksId = await createOrgTable('event_links', linkFields);
  const venueLinksId = await createOrgTable('venue_links', linkFields);

  console.log('\nRelations...');

  const linkImage = async (sourceId: string, name: string) => {
    await withRetry(() => client.relationProvision.create({
      data: { databaseId, relationType: 'RelationBelongsTo', sourceTableId: sourceId, targetTableId: imagesId, fieldName: 'main_image_id', sourceFieldName: 'main_image_id', targetFieldName: 'id', deleteAction: 'n', isRequired: false },
      select: { id: true },
    }).unwrap());
    console.log(`   + ${name} -> images (main_image)`);
  };
  await linkImage(contactsId, 'contacts');
  await linkImage(companiesId, 'companies');
  await linkImage(eventsId, 'events');
  await linkImage(venuesId, 'venues');

  const m2nOpts = {
    nodeType: 'DataEntityMembership',
    policyType: 'AuthzEntityMembership',
    policyPermissive: true,
    policyData: entityPolicyData,
    grantRoles: ['authenticated'],
    grantPrivileges: [['select', '*'], ['insert', '*'], ['delete', '*']] as any,
  };

  const m2n = async (srcId: string, tgtId: string, junction: string, srcField: string, tgtField: string, label: string) => {
    await withRetry(() => client.relationProvision.create({
      data: { databaseId, relationType: 'RelationManyToMany', sourceTableId: srcId, targetTableId: tgtId, junctionTableName: junction, sourceFieldName: srcField, targetFieldName: tgtField, isRequired: false, ...m2nOpts },
      select: { id: true },
    }).unwrap());
    console.log(`   + ${label}`);
  };

  await m2n(contactsId, imagesId, 'contact_images', 'contact_id', 'image_id', 'contacts <-> images');
  await m2n(companiesId, imagesId, 'company_images', 'company_id', 'image_id', 'companies <-> images');
  await m2n(eventsId, imagesId, 'event_images', 'event_id', 'image_id', 'events <-> images');
  await m2n(venuesId, imagesId, 'venue_images', 'venue_id', 'image_id', 'venues <-> images');
  await m2n(contactsId, companiesId, 'contact_companies', 'contact_id', 'company_id', 'contacts <-> companies');
  await m2n(contactsId, eventsId, 'contact_events', 'contact_id', 'event_id', 'contacts <-> events');
  await m2n(companiesId, eventsId, 'company_events', 'company_id', 'event_id', 'companies <-> events');
  await m2n(eventsId, venuesId, 'event_venues', 'event_id', 'venue_id', 'events <-> venues');
  await m2n(dealsId, contactsId, 'deal_contacts', 'deal_id', 'contact_id', 'deals <-> contacts');

  const hasMany = async (srcId: string, tgtId: string, label: string) => {
    await withRetry(() => client.relationProvision.create({
      data: { databaseId, relationType: 'RelationHasMany', sourceTableId: srcId, targetTableId: tgtId, deleteAction: 'c' },
      select: { id: true },
    }).unwrap());
    console.log(`   + ${label}`);
  };
  await hasMany(contactsId, notesId, 'contacts -> notes');
  await hasMany(contactsId, contactLinksId, 'contacts -> contact_links');
  await hasMany(companiesId, companyLinksId, 'companies -> company_links');
  await hasMany(eventsId, eventLinksId, 'events -> event_links');
  await hasMany(venuesId, venueLinksId, 'venues -> venue_links');

  console.log('\nCRM Schema complete!\n');
}

main().catch((err) => { console.error(err.message ?? err); process.exit(1); });
