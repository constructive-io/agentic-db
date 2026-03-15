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

async function addField(tableId: string, name: string, type: string, opts: { isRequired?: boolean; defaultValue?: string } = {}): Promise<string> {
  const result = await withRetry(() => client.field.create({ data: { tableId, name, type, isRequired: opts.isRequired ?? false, label: name, ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}) }, select: { id: true } }).unwrap());
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}

async function tryRelation(sourceId: string, targetId: string, relationType: any, junctionName: string | undefined, sourceField: string, targetField: string, label: string) {
  try {
      await withRetry(() => client.relationProvision.create({
        data: { 
            databaseId, 
            relationType, 
            sourceTableId: sourceId, 
            targetTableId: targetId, 
            deleteAction: 'c',
            junctionTableName: junctionName,
            sourceFieldName: relationType === "RelationHasMany" ? undefined : sourceField,
            targetFieldName: relationType === "RelationHasMany" ? undefined : targetField,
            isRequired: false,
            nodeType: junctionName ? 'DataEntityMembership' : undefined, 
            policyType: junctionName ? 'AuthzEntityMembership' : undefined, 
            policyPermissive: junctionName ? true : undefined, 
            policyData: junctionName ? entityPolicyData : undefined, 
            grantRoles: junctionName ? ['authenticated'] : undefined, 
            grantPrivileges: junctionName ? [['select', '*'], ['insert', '*'], ['delete', '*']] as any : undefined
        },
        select: { id: true },
      }).unwrap());
      console.log(`   ✓ ${label}`);
  } catch (e: any) {
      if (e.message && (e.message.includes("already exists") || e.message.includes("duplicate"))) {
          console.log(`   ✓ ${label} (already exists)`);
      } else {
          console.error(`   ❌ Failed ${label}`, e.message);
      }
  }
}

async function main() {
  console.log('\n🚀 Applying Agent OS Upgrades...');
  
  const tablesResult = await client.table.findMany({
    condition: { databaseId },
    select: { id: true, name: true }
  }).unwrap();

  const getTableId = (name: string) => {
    const t = tablesResult.tables?.nodes.find((n: any) => n.name === name);
    return t ? t.id : null;
  };

  const contactsId = getTableId('contacts');
  const companiesId = getTableId('companies');
  const dealsId = getTableId('deals');
  const tasksId = getTableId('tasks');
  const docsId = getTableId('documents');

  if (!contactsId || !tasksId || !docsId) {
      throw new Error('Required base tables not found');
  }

  // 1. Plural Emails & Phones
  console.log('\n📱 1. Plural Emails & Phones...');
  const createSubTable = async (name: string, fieldName: string) => {
    let tableId = getTableId(name);
    if (tableId) {
      console.log(`   ✓ ${name} (already exists)`);
    } else {
      tableId = await createOrgTable(name);
      await addField(tableId, fieldName, 'text', { isRequired: true });
      await addField(tableId, 'label', 'text', { defaultValue: "'work'" });
      await addField(tableId, 'is_primary', 'boolean', { defaultValue: 'false' });
      await addField(tableId, 'embedding', 'vector(768)');
    }
    return tableId!;
  };

  const contactEmailsId = await createSubTable('contact_emails', 'email');
  const contactPhonesId = await createSubTable('contact_phones', 'phone');

  await tryRelation(contactsId, contactEmailsId, 'RelationHasMany', undefined, 'id', 'contact_id', 'contacts → contact_emails');
  await tryRelation(contactsId, contactPhonesId, 'RelationHasMany', undefined, 'id', 'contact_id', 'contacts → contact_phones');

  // 2. Document/Attachment Links
  console.log('\n📄 2. Document/Attachment Links...');
  await tryRelation(contactsId, docsId, 'RelationManyToMany', 'contact_documents', 'contact_id', 'document_id', 'contacts ↔ documents');
  if (companiesId) await tryRelation(companiesId, docsId, 'RelationManyToMany', 'company_documents', 'company_id', 'document_id', 'companies ↔ documents');
  if (dealsId) await tryRelation(dealsId, docsId, 'RelationManyToMany', 'deal_documents', 'deal_id', 'document_id', 'deals ↔ documents');

  // 3. Human-in-the-Loop Approvals
  console.log('\n✅ 3. Human-in-the-Loop Approvals on Tasks...');
  try {
      await addField(tasksId, 'requires_approval', 'boolean', { defaultValue: 'false' });
      await addField(tasksId, 'approval_status', 'text', { defaultValue: "'pending'" });
      await addField(tasksId, 'approved_at', 'timestamptz');
  } catch (e: any) {
      console.log(`   (Fields may already exist on tasks: ${e.message})`);
  }

  // 4. "The Sensory Inbox"
  console.log('\n📥 4. The Sensory Inbox (Inbound Events)...');
  let inboundEventsId = getTableId('inbound_events');
  if (inboundEventsId) {
    console.log(`   ✓ inbound_events (already exists)`);
  } else {
    inboundEventsId = await createOrgTable('inbound_events');
    await addField(inboundEventsId, 'source', 'text', { isRequired: true });
    await addField(inboundEventsId, 'event_type', 'text', { isRequired: true });
    await addField(inboundEventsId, 'payload', 'jsonb', { isRequired: true });
    await addField(inboundEventsId, 'status', 'text', { defaultValue: "'unread'" });
    await addField(inboundEventsId, 'embedding', 'vector(768)');
  }

  console.log('\n🎉 Upgrades applied successfully!');
}

main().catch((err) => { console.error('❌', err.message ?? err); process.exit(1); });
