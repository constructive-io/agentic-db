/**
 * crm.ts — Provision CRM schema tables using platform SDK
 * Includes vector(768) columns for embeddings (Ollama nomic-embed-text)
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../../.env') });

import { createClient } from '../sdk/platform/orm/index.js';
import { NodeHttpAdapter } from '../sdk/node-http-adapter.js';
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

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}) {
  await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
}

async function main() {
  console.log('\n📋 Provisioning CRM Schema with Embeddings\n');
  console.log(`   Database ID: ${databaseId}`);

  console.log('\n👤 contacts...');
  const contactsId = await createOrgTable('contacts');
  await addField(contactsId, 'first_name', 'text', { isRequired: true });
  await addField(contactsId, 'last_name', 'text');
  await addField(contactsId, 'email', 'text');
  await addField(contactsId, 'phone', 'text');
  await addField(contactsId, 'headline', 'text');
  await addField(contactsId, 'bio', 'text');
  await addField(contactsId, 'location', 'text');
  await addField(contactsId, 'embedding', 'vector(768)');  // nomic-embed-text dimension

  console.log('\n🏢 companies...');
  const companiesId = await createOrgTable('companies');
  await addField(companiesId, 'name', 'text', { isRequired: true });
  await addField(companiesId, 'domain', 'text');
  await addField(companiesId, 'industry', 'text');
  await addField(companiesId, 'description', 'text');
  await addField(companiesId, 'embedding', 'vector(768)');

  console.log('\n💰 deals...');
  const dealsId = await createOrgTable('deals');
  await addField(dealsId, 'name', 'text', { isRequired: true });
  await addField(dealsId, 'stage', 'text', { defaultValue: "'lead'" });
  await addField(dealsId, 'value', 'numeric');
  await addField(dealsId, 'notes', 'text');
  await addField(dealsId, 'embedding', 'vector(768)');

  console.log('\n📅 events...');
  const eventsId = await createOrgTable('events');
  await addField(eventsId, 'name', 'text', { isRequired: true });
  await addField(eventsId, 'event_type', 'text');
  await addField(eventsId, 'location', 'text');
  await addField(eventsId, 'city', 'text');
  await addField(eventsId, 'started_at', 'timestamptz');
  await addField(eventsId, 'ended_at', 'timestamptz');
  await addField(eventsId, 'notes', 'text');
  await addField(eventsId, 'embedding', 'vector(768)');

  console.log('\n🏛️ venues...');
  const venuesId = await createOrgTable('venues');
  await addField(venuesId, 'name', 'text', { isRequired: true });
  await addField(venuesId, 'neighborhood', 'text');
  await addField(venuesId, 'city', 'text');
  await addField(venuesId, 'status', 'text', { defaultValue: "'potential'" });
  await addField(venuesId, 'notes', 'text');
  await addField(venuesId, 'embedding', 'vector(768)');

  console.log('\n📝 notes...');
  const notesId = await createOrgTable('notes');
  await addField(notesId, 'content', 'text', { isRequired: true });
  await addField(notesId, 'embedding', 'vector(768)');

  console.log('\n🏷️ tags (shared)...');
  const tagsResult = await withRetry(() =>
    client.secureTableProvision.create({
      data: { databaseId, tableName: 'tags', nodeType: 'DataId', useRls: true, grantRoles: ['authenticated'], grantPrivileges: entityGrants, policyType: 'AuthzAllowAll', policyPermissive: true, policyData: {} as any },
      select: { id: true, tableId: true },
    }).unwrap()
  );
  const tagsId = tagsResult.createSecureTableProvision?.secureTableProvision?.tableId!;
  await addField(tagsId, 'name', 'text', { isRequired: true });
  console.log('   ✓ tags');

  console.log('\n🔗 Relations...');

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

  console.log('\n✅ CRM Schema with embeddings complete!\n');
  console.log('   All tables have vector(768) embedding columns for RAG\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
