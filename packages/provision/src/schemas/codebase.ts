/**
 * codebase.ts — Provision Codebase Intelligence schema
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
        nodeType: 'DataEntityMembership', 
        useRls: true,
        grantRoles: ['authenticated'],
        grantPrivileges: entityGrants,
        policyType: 'AuthzEntityMembership',
        policyPermissive: true,
        policyData: entityPolicyData,
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
  console.log('\n💻 Provisioning Codebase Schema\n');

  // 1. Repositories
  console.log('📦 repositories...');
  const reposId = await createOrgTable('repositories');
  await addField(reposId, 'name', 'text', { isRequired: true });
  await addField(reposId, 'url', 'text');
  await addField(reposId, 'description', 'text');
  await addField(reposId, 'default_branch', 'text');
  await addField(reposId, 'last_synced_at', 'timestamptz');
  await addField(reposId, 'embedding', 'vector(768)');

  // 2. Files
  console.log('📄 files...');
  const filesId = await createOrgTable('files');
  await addField(filesId, 'path', 'text', { isRequired: true });
  await addField(filesId, 'language', 'text');
  await addField(filesId, 'hash', 'text');
  
  // 3. Chunks (RAG)
  console.log('🧩 chunks...');
  const chunksId = await createOrgTable('chunks');
  await addField(chunksId, 'content', 'text', { isRequired: true });
  await addField(chunksId, 'start_line', 'integer');
  await addField(chunksId, 'end_line', 'integer');
  await addField(chunksId, 'embedding', 'vector(768)');

  // 4. Relations
  console.log('\n🔗 Relations...');

  // Repos -> Files
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: reposId, targetTableId: filesId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());

  // Files -> Chunks
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: filesId, targetTableId: chunksId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());
  
  // Repos -> Chunks (Optional shortcut for querying chunks by repo)
  await withRetry(() => client.relationProvision.create({
    data: { databaseId, relationType: 'RelationHasMany', sourceTableId: reposId, targetTableId: chunksId, deleteAction: 'c' },
    select: { id: true },
  }).unwrap());


  console.log('\n✅ Codebase Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
