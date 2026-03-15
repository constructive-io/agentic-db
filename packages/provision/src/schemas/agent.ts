/**
 * agent.ts — Provision Agent Core schema tables
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

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string; isArray?: boolean } = {}): Promise<string> {
  const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

async function main() {
  console.log('\n🤖 Provisioning Agent Schema with Embeddings & Tags\n');

  console.log('📋 tasks...');
  const tasksId = await createOrgTable('tasks');
  await addField(tasksId, 'title', 'text', { isRequired: true });
  await addField(tasksId, 'description', 'text');
  await addField(tasksId, 'status', 'text', { defaultValue: "'todo'" });
  await addField(tasksId, 'priority', 'integer', { defaultValue: '0' });
  await addField(tasksId, 'tags', 'citext[]');
  await addField(tasksId, 'embedding', 'vector(768)');

  console.log('📜 rules...');
  const rulesId = await createOrgTable('rules');
  await addField(rulesId, 'title', 'text', { isRequired: true });
  await addField(rulesId, 'content', 'text');
  await addField(rulesId, 'kind', 'text', { defaultValue: "'convention'" });
  await addField(rulesId, 'is_active', 'boolean', { defaultValue: 'true' });
  await addField(rulesId, 'tags', 'citext[]');
  await addField(rulesId, 'embedding', 'vector(768)');

  console.log('🧠 memories...');
  const memId = await createOrgTable('memories');
  await addField(memId, 'content', 'text');
  await addField(memId, 'tags', 'citext[]');
  await addField(memId, 'embedding', 'vector(768)');

  console.log('🛠️ skills...');
  const skillsId = await createOrgTable('skills');
  await addField(skillsId, 'name', 'text', { isRequired: true });
  await addField(skillsId, 'description', 'text');
  await addField(skillsId, 'content', 'text');
  await addField(skillsId, 'is_active', 'boolean', { defaultValue: 'true' });
  await addField(skillsId, 'tags', 'citext[]');
  await addField(skillsId, 'embedding', 'vector(768)');

  console.log('\n✅ Agent Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
