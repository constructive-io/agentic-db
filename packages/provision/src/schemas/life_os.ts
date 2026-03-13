/**
 * life_os.ts \u2014 Life OS domain schema
 *
 * Tables: email_accounts, messages, calendar_accounts, calendar_events,
 *         expenses, documents
 */

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
  entityGrants,
  entityPolicyData,
} from '../helpers';

const databaseId = requireDatabaseId();
const client = createPlatformClient();


async function createOrgTable(tableName: string): Promise<string> {
  const result = await withRetry(() =>
    client.secureTableProvision
      .create({
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
      })
      .unwrap()
  );
  const tableId =
    result.createSecureTableProvision?.secureTableProvision?.tableId;
  if (!tableId) throw new Error(`No tableId for ${tableName}`);

  await withRetry(() =>
    client.secureTableProvision
      .create({
        data: {
          databaseId,
          tableId,
          nodeType: 'DataTimestamps',
          nodeData: { include_id: false } as any,
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log(`   \u2713 ${tableName}`);
  return tableId;
}

async function addField(
  tableId: string,
  name: string,
  type: string,
  opts: { isRequired?: boolean; defaultValue?: string } = {}
): Promise<string> {
  const result = await withRetry(() =>
    client.field
      .create({
        data: {
          tableId,
          name,
          type,
          isRequired: opts.isRequired ?? false,
          label: name,
          ...(opts.defaultValue ? { defaultValue: opts.defaultValue } : {}),
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log(`      + ${name} (${type})`);
  return result.createField?.field?.id!;
}


async function main() {
  console.log('\n\ud83c\udf10 Life OS Schema\n');

  // -- Email Accounts -------------------------------------------------------
  console.log('\ud83d\udce7 email_accounts...');
  const emailAcctsId = await createOrgTable('email_accounts');
  await addField(emailAcctsId, 'email', 'text', { isRequired: true });
  await addField(emailAcctsId, 'provider', 'text');
  await addField(emailAcctsId, 'sync_state', 'jsonb');

  // -- Messages -------------------------------------------------------------
  console.log('\n\ud83d\udcec messages...');
  const messagesId = await createOrgTable('messages');
  await addField(messagesId, 'email_account_id', 'uuid');
  await addField(messagesId, 'thread_id', 'text');
  await addField(messagesId, 'remote_id', 'text');
  await addField(messagesId, 'from_address', 'text');
  await addField(messagesId, 'to_addresses', 'text[]');
  await addField(messagesId, 'subject', 'text');
  await addField(messagesId, 'body_text', 'text');
  await addField(messagesId, 'received_at', 'timestamptz');
  await addField(messagesId, 'tags', 'citext[]');
  await addField(messagesId, 'embedding_text', 'text');
  await addField(messagesId, 'embedding', 'vector(768)');

  // -- Calendar Accounts ----------------------------------------------------
  console.log('\n\ud83d\udcc6 calendar_accounts...');
  const calAcctsId = await createOrgTable('calendar_accounts');
  await addField(calAcctsId, 'email', 'text', { isRequired: true });
  await addField(calAcctsId, 'provider', 'text');
  await addField(calAcctsId, 'sync_token', 'text');
  await addField(calAcctsId, 'last_synced_at', 'timestamptz');

  // -- Calendar Events ------------------------------------------------------
  console.log('\n\ud83d\udcc5 calendar_events...');
  const calEventsId = await createOrgTable('calendar_events');
  await addField(calEventsId, 'calendar_account_id', 'uuid');
  await addField(calEventsId, 'remote_id', 'text');
  await addField(calEventsId, 'title', 'text', { isRequired: true });
  await addField(calEventsId, 'description', 'text');
  await addField(calEventsId, 'start_at', 'timestamptz', { isRequired: true });
  await addField(calEventsId, 'end_at', 'timestamptz');
  await addField(calEventsId, 'all_day', 'bool', { defaultValue: 'false' });
  await addField(calEventsId, 'location', 'text');
  await addField(calEventsId, 'recurrence_rule', 'text');
  await addField(calEventsId, 'status', 'text', { defaultValue: "'confirmed'" });
  await addField(calEventsId, 'tags', 'citext[]');
  await addField(calEventsId, 'embedding_text', 'text');
  await addField(calEventsId, 'embedding', 'vector(768)');

  // -- Expenses -------------------------------------------------------------
  console.log('\n\ud83d\udcb8 expenses...');
  const expensesId = await createOrgTable('expenses');
  await addField(expensesId, 'amount', 'numeric');
  await addField(expensesId, 'currency', 'text', { defaultValue: "'USD'" });
  await addField(expensesId, 'date', 'date');
  await addField(expensesId, 'category', 'text');
  await addField(expensesId, 'description', 'text');
  await addField(expensesId, 'merchant', 'text');
  await addField(expensesId, 'receipt_url', 'text');
  await addField(expensesId, 'is_recurring', 'bool', { defaultValue: 'false' });
  await addField(expensesId, 'tags', 'citext[]');
  await addField(expensesId, 'embedding_text', 'text');
  await addField(expensesId, 'embedding', 'vector(768)');

  // -- Documents ------------------------------------------------------------
  console.log('\n\ud83d\udcc4 documents...');
  const documentsId = await createOrgTable('documents');
  await addField(documentsId, 'title', 'text', { isRequired: true });
  await addField(documentsId, 'url', 'text');
  await addField(documentsId, 'content', 'text');
  await addField(documentsId, 'source_type', 'text');
  await addField(documentsId, 'is_read', 'bool', { defaultValue: 'false' });
  await addField(documentsId, 'saved_at', 'timestamptz');
  await addField(documentsId, 'tags', 'citext[]');
  await addField(documentsId, 'embedding_text', 'text');
  await addField(documentsId, 'embedding', 'vector(768)');
  await addField(documentsId, 'search_tsv', 'tsvector');

  // -- Relations ------------------------------------------------------------
  console.log('\n\ud83d\udd17 Relations...');

  // email_accounts -> messages (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: emailAcctsId,
          targetTableId: messagesId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 email_accounts -> messages');

  // calendar_accounts -> calendar_events (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: calAcctsId,
          targetTableId: calEventsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 calendar_accounts -> calendar_events');

  console.log('\n\u2705 Life OS Schema complete!\n');
}

main().catch((err) => {
  console.error('\u274c', err.message ?? err);
  process.exit(1);
});
