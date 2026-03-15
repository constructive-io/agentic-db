/**
 * add-link-tables.ts — Extensible link tables for CRM entities
 * Uses inline fields on secureTableProvision.create()
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
  console.log('\nAdding Extensible Link Tables to existing CRM...');

  // Look up existing parent tables
  const tablesResult = await client.table.findMany({
    where: { databaseId: { equalTo: databaseId } },
    select: { id: true, name: true }
  }).unwrap();

  const getTableId = (name: string) => {
    const t = tablesResult.tables?.nodes.find((n: any) => n.name === name);
    if (!t) throw new Error(`Table ${name} not found`);
    return t.id;
  };

  const contactsId = getTableId('contacts');
  const companiesId = getTableId('companies');
  const eventsId = getTableId('events');
  const venuesId = getTableId('venues');

  const linkFields: FieldDef[] = [
    { name: 'title', type: 'text' },
    { name: 'url', type: 'text', is_required: true },
    { name: 'embedding', type: 'vector(768)' },
  ];

  const createLinkTable = async (name: string) => {
    let tableId: string;
    try {
      tableId = getTableId(name);
      console.log(`   + ${name} (already exists)`);
    } catch {
      tableId = await createOrgTable(name, linkFields);
    }
    return tableId;
  };

  const contactLinksId = await createLinkTable('contact_links');
  const companyLinksId = await createLinkTable('company_links');
  const eventLinksId = await createLinkTable('event_links');
  const venueLinksId = await createLinkTable('venue_links');

  console.log('\nCreating Relations...');

  const tryRelation = async (sourceId: string, targetId: string, label: string) => {
    try {
      await withRetry(() => client.relationProvision.create({
        data: { databaseId, relationType: 'RelationHasMany', sourceTableId: sourceId, targetTableId: targetId, deleteAction: 'c' },
        select: { id: true },
      }).unwrap());
      console.log(`   + ${label}`);
    } catch (e: any) {
      if (e.message && e.message.includes('already exists')) {
        console.log(`   + ${label} (already exists)`);
      } else {
        console.error(`   Failed ${label}`, e.message);
      }
    }
  };

  await tryRelation(contactsId, contactLinksId, 'contacts -> contact_links');
  await tryRelation(companiesId, companyLinksId, 'companies -> company_links');
  await tryRelation(eventsId, eventLinksId, 'events -> event_links');
  await tryRelation(venuesId, venueLinksId, 'venues -> venue_links');

  console.log('\nLink Tables complete!');
}

main().catch((err) => { console.error(err.message ?? err); process.exit(1); });
