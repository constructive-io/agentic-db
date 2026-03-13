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
  console.log('\n🔗 Adding Extensible Link Tables to existing CRM...');
  
  // Need to get the table IDs for the existing parent tables to link them
  const tablesResult = await client.table.findMany({
    condition: { databaseId },
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

  const createLinkTable = async (name: string) => {
    // We already created contact_links table above before the crash, so check if it exists
    let tableId;
    try {
      tableId = getTableId(name);
      console.log(`   ✓ ${name} (already exists)`);
    } catch {
      tableId = await createOrgTable(name);
      await addField(tableId, 'title', 'text');
      await addField(tableId, 'url', 'text', { isRequired: true });
      await addField(tableId, 'embedding', 'vector(768)');
    }
    return tableId;
  };

  const contactLinksId = await createLinkTable('contact_links');
  const companyLinksId = await createLinkTable('company_links');
  const eventLinksId = await createLinkTable('event_links');
  const venueLinksId = await createLinkTable('venue_links');

  console.log('\n🔗 Creating Relations...');

  const tryRelation = async (sourceId: string, targetId: string, label: string) => {
    try {
        await withRetry(() => client.relationProvision.create({
          data: { databaseId, relationType: 'RelationHasMany', sourceTableId: sourceId, targetTableId: targetId, deleteAction: 'c' },
          select: { id: true },
        }).unwrap());
        console.log(`   ✓ ${label}`);
    } catch (e: any) {
        if (e.message && e.message.includes("already exists")) {
            console.log(`   ✓ ${label} (already exists)`);
        } else {
            console.error(`   ❌ Failed ${label}`, e.message);
        }
    }
  };

  await tryRelation(contactsId, contactLinksId, 'contacts → contact_links');
  await tryRelation(companiesId, companyLinksId, 'companies → company_links');
  await tryRelation(eventsId, eventLinksId, 'events → event_links');
  await tryRelation(venuesId, venueLinksId, 'venues → venue_links');

  console.log('\n✅ Link Tables Successfully Added!');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
