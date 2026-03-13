/**
 * codebase.ts \u2014 Codebase domain schema
 *
 * Tables: repositories, files, chunks
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
  console.log('\n\ud83d\udcbb Codebase Schema\n');

  // -- Repositories ---------------------------------------------------------
  console.log('\ud83d\udce6 repositories...');
  const reposId = await createOrgTable('repositories');
  await addField(reposId, 'name', 'text', { isRequired: true });
  await addField(reposId, 'url', 'text');
  await addField(reposId, 'description', 'text');
  await addField(reposId, 'default_branch', 'text');
  await addField(reposId, 'last_synced_at', 'timestamptz');
  await addField(reposId, 'tags', 'citext[]');
  await addField(reposId, 'embedding_text', 'text');
  await addField(reposId, 'embedding', 'vector(768)');

  // -- Files ----------------------------------------------------------------
  console.log('\n\ud83d\udcc4 files...');
  const filesId = await createOrgTable('files');
  await addField(filesId, 'repository_id', 'uuid');
  await addField(filesId, 'path', 'text', { isRequired: true });
  await addField(filesId, 'language', 'text');
  await addField(filesId, 'hash', 'text');

  // -- Chunks ---------------------------------------------------------------
  console.log('\n\ud83e\udde9 chunks...');
  const chunksId = await createOrgTable('chunks');
  await addField(chunksId, 'file_id', 'uuid');
  await addField(chunksId, 'repository_id', 'uuid');
  await addField(chunksId, 'content', 'text', { isRequired: true });
  await addField(chunksId, 'start_line', 'int');
  await addField(chunksId, 'end_line', 'int');
  await addField(chunksId, 'embedding_text', 'text');
  await addField(chunksId, 'embedding', 'vector(768)');

  // -- Relations ------------------------------------------------------------
  console.log('\n\ud83d\udd17 Relations...');

  // repos -> files (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: reposId,
          targetTableId: filesId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 repositories -> files');

  // files -> chunks (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: filesId,
          targetTableId: chunksId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 files -> chunks');

  console.log('\n\u2705 Codebase Schema complete!\n');
}

main().catch((err) => {
  console.error('\u274c', err.message ?? err);
  process.exit(1);
});
