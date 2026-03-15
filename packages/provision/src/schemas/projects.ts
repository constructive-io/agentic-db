/**
 * projects.ts — Provision Project Management schema
 * Security: Safegres AuthzEntityMembership (Org-scoped)
 */

import * as dotenv from 'dotenv';
import * as path from 'path';
dotenv.config({ path: path.resolve(__dirname, '../../../../.env') });

import { createClient } from '../sdk/platform/orm/index';
import { NodeHttpAdapter } from '../sdk/node-http-adapter';
import { withRetry, entityGrants, entityPolicyData } from '../helpers';

const databaseId = process.env.DATABASE_ID;


if (!databaseId) {
  console.error('❌ Missing DATABASE_ID in env');
  process.exit(1);
}

const PLATFORM_ENDPOINT = process.env.META_ENDPOINT || 'http://localhost:3000/graphql';

const adapter = new NodeHttpAdapter(PLATFORM_ENDPOINT, {
  'X-Meta-Schema': 'true',
});
const client = createClient({ adapter });

async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision.create({
      data: {
        databaseId,
        tableName,
        nodeType: 'DataEntityMembership', // Adds entity_id
        useRls: true,
        grantRoles: ['authenticated'],
        grantPrivileges: entityGrants,
        policyType: 'AuthzEntityMembership',
        policyPermissive: true,
        policyData: entityPolicyData, // { entity_field: 'entity_id', membership_type: 2 }
      },
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
  console.log('\n🏗️  Provisioning Projects Schema\n');

  // 1. Projects
  console.log('📂 projects...');
  const projectsId = await createOrgTable('projects');
  await addField(projectsId, 'name', 'text', { isRequired: true });
  await addField(projectsId, 'description', 'text');
  await addField(projectsId, 'status', 'text', { defaultValue: "'planned'" });
  await addField(projectsId, 'start_date', 'timestamptz');
  await addField(projectsId, 'due_date', 'timestamptz');
  await addField(projectsId, 'embedding', 'vector(768)');

  // 2. Milestones
  console.log('\n🚩 milestones...');
  const milestonesId = await createOrgTable('milestones');
  await addField(milestonesId, 'name', 'text', { isRequired: true });
  await addField(milestonesId, 'due_date', 'timestamptz');
  await addField(milestonesId, 'embedding', 'vector(768)');

  // 3. Relations
  console.log('\n🔗 Relations...');

  // Projects -has-many-> Milestones
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: projectsId, targetTableId: milestonesId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  console.log('   ✓ projects → milestones');
  
  console.log('\n✅ Projects Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
