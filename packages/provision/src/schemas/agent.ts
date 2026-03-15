/**
 * agent.ts — Provision Agent Core schema tables using inline fields
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
  console.log('\nProvisioning Agent Schema\n');

  await createOrgTable('tasks', [
    { name: 'title', type: 'text', is_required: true },
    { name: 'description', type: 'text' },
    { name: 'status', type: 'text', default: "'todo'" },
    { name: 'priority', type: 'integer', default: '0' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  await createOrgTable('rules', [
    { name: 'title', type: 'text', is_required: true },
    { name: 'content', type: 'text' },
    { name: 'kind', type: 'text', default: "'convention'" },
    { name: 'is_active', type: 'boolean', default: 'true' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  await createOrgTable('memories', [
    { name: 'content', type: 'text' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  await createOrgTable('skills', [
    { name: 'name', type: 'text', is_required: true },
    { name: 'description', type: 'text' },
    { name: 'content', type: 'text' },
    { name: 'is_active', type: 'boolean', default: 'true' },
    { name: 'tags', type: 'citext[]' },
    { name: 'embedding', type: 'vector(768)' },
  ]);

  console.log('\nAgent Schema complete!\n');
}

main().catch((err) => { console.error(err.message ?? err); process.exit(1); });
