/**
 * accounting.ts — Provision Accounting schema tables
 * Run with: pnpm --filter @agent-os/provision run provision:accounting
 */

import { public_, NodeHttpAdapter } from '@constructive-io/node';
import { config } from '../config';
import { withRetry, entityGrants, entityPolicyData } from '../helpers';
import 'dotenv/config';

const databaseId = process.env.DATABASE_ID;
const accessToken = process.env.ACCESS_TOKEN;

if (!databaseId || !accessToken) {
  console.error('❌ Missing DATABASE_ID or ACCESS_TOKEN in .env');
  process.exit(1);
}

const adapter = new NodeHttpAdapter(config.apiEndpoint, { Authorization: `Bearer ${accessToken}` });
const client = public_.orm.createClient({ adapter });

async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision.create({
      data: { databaseId, tableName, nodeType: 'DataEntityMembership', useRls: true, grantRoles: ['authenticated'], grantPrivileges: entityGrants, policyType: 'AuthzEntityMembership', policyPermissive: true, policyData: entityPolicyData },
      select: { id: true, tableId: true },
    }).execute()
  );
  const tableId = result.value?.createSecureTableProvision?.secureTableProvision?.tableId!;
  await withRetry(() => client.secureTableProvision.create({ data: { databaseId, tableId, nodeType: 'DataTimestamps', nodeData: { include_id: false } }, select: { id: true } }).execute());
  console.log(`   ✓ ${tableName}`);
  return tableId;
}

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}) {
  await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).execute());
  console.log(`      + ${name}`);
}

async function main() {
  console.log('\n💰 Provisioning Accounting Schema\n');

  const expensesId = await createOrgTable('expenses');
  await addField(expensesId, 'description', 'text', { isRequired: true });
  await addField(expensesId, 'amount', 'numeric');
  await addField(expensesId, 'currency', 'text', { defaultValue: "'USD'" });
  await addField(expensesId, 'category', 'text');
  await addField(expensesId, 'occurred_at', 'date');
  await addField(expensesId, 'is_business', 'boolean', { defaultValue: 'true' });
  await addField(expensesId, 'notes', 'text');

  console.log('\n✅ Accounting Schema complete!\n');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
