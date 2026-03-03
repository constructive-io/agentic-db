/**
 * agent.ts — Provision Agent schema tables
 * Run with: pnpm --filter @agent-os/provision run provision:agent
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
      data: { 
        databaseId, 
        tableName, 
        nodeType: 'DataEntityMembership', 
        useRls: true, 
        grantRoles: ['authenticated'], 
        grantPrivileges: entityGrants, 
        policyType: 'AuthzEntityMembership', 
        policyPermissive: true, 
        policyData: entityPolicyData 
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

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<string> {
  const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

async function addBm25Index(tableId: string, name: string, fieldIds: string[]) {
  await withRetry(() => client.index.create({
    data: {
      databaseId,
      tableId,
      name,
      accessMethod: 'bm25',
      fieldIds,
      indexParams: { text_config: 'english' }, 
    },
    select: { id: true }
  }).unwrap());
  console.log(`      🔍 Index: ${name}`);
}

async function main() {
  console.log('\n🤖 Provisioning Agent Schema with Embeddings & BM25\n');

  console.log('📋 tasks...');
  const tasksId = await createOrgTable('tasks');
  const t_title = await addField(tasksId, 'title', 'text', { isRequired: true });
  const t_desc = await addField(tasksId, 'description', 'text');
  await addField(tasksId, 'status', 'text', { defaultValue: "'ready'" });
  await addField(tasksId, 'priority', 'integer', { defaultValue: '0' });
  await addField(tasksId, 'embedding', 'vector(768)');

  // await addBm25Index(tasksId, 'tasks_bm25_idx', [t_title, t_desc]);

  console.log('\n📜 rules...');
  const rulesId = await createOrgTable('rules');
  const r_title = await addField(rulesId, 'title', 'text', { isRequired: true });
  const r_content = await addField(rulesId, 'content', 'text');
  await addField(rulesId, 'kind', 'text');
  await addField(rulesId, 'is_active', 'boolean', { defaultValue: 'true' });
  await addField(rulesId, 'embedding', 'vector(768)');

  // await addBm25Index(rulesId, 'rules_bm25_idx', [r_title, r_content]);

  console.log('\n🧠 memories...');
  const memoriesId = await createOrgTable('memories');
  const m_content = await addField(memoriesId, 'content', 'text', { isRequired: true });
  await addField(memoriesId, 'tags', 'text[]');
  await addField(memoriesId, 'embedding', 'vector(768)');

  // await addBm25Index(memoriesId, 'memories_bm25_idx', [m_content]);

  console.log('\n🛠️ skills...');
  const skillsId = await createOrgTable('skills');
  const s_name = await addField(skillsId, 'name', 'text', { isRequired: true });
  const s_desc = await addField(skillsId, 'description', 'text');
  const s_content = await addField(skillsId, 'content', 'text');
  await addField(skillsId, 'is_active', 'boolean', { defaultValue: 'true' });
  await addField(skillsId, 'embedding', 'vector(768)');

  // await addBm25Index(skillsId, 'skills_bm25_idx', [s_name, s_desc, s_content]);

  console.log('\n✅ Agent Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
