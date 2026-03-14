/**
 * projects.ts \u2014 Projects domain schema
 *
 * Tables: projects, milestones
 * Relations: projects->milestones (HasMany), projects<->contacts (M:N via cross-relations.ts)
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
  console.log('\n\ud83d\udcc1 Projects Schema\n');

  // -- Projects -------------------------------------------------------------
  console.log('\ud83d\udcbc projects...');
  const projectsId = await createOrgTable('projects');
  await addField(projectsId, 'name', 'text', { isRequired: true });
  await addField(projectsId, 'description', 'text');
  await addField(projectsId, 'status', 'text', { defaultValue: "'active'" });
  await addField(projectsId, 'start_date', 'timestamptz');
  await addField(projectsId, 'due_date', 'timestamptz');
  await addField(projectsId, 'tags', 'citext[]');
  await addField(projectsId, 'embedding_text', 'text');
  await addField(projectsId, 'embedding', 'vector(768)');
  await addField(projectsId, 'search_tsv', 'tsvector');

  // -- Milestones -----------------------------------------------------------
  console.log('\n\ud83d\udea9 milestones...');
  const milestonesId = await createOrgTable('milestones');
  await addField(milestonesId, 'project_id', 'uuid');
  await addField(milestonesId, 'name', 'text', { isRequired: true });
  await addField(milestonesId, 'due_date', 'timestamptz');
  await addField(milestonesId, 'status', 'text', { defaultValue: "'pending'" });
  // No embeddings — milestones are queried by project_id + status

  // -- Relations ------------------------------------------------------------
  console.log('\n\ud83d\udd17 Relations...');

  // projects -> milestones (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: projectsId,
          targetTableId: milestonesId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 projects -> milestones');

  const m2mOpts = {
    nodeType: 'DataEntityMembership',
    policyType: 'AuthzEntityMembership',
    policyPermissive: true,
    policyData: entityPolicyData,
    grantRoles: ['authenticated'],
    grantPrivileges: [
      ['select', '*'],
      ['insert', '*'],
      ['delete', '*'],
    ] as any,
  };


  // projects <-> contacts (M:N)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationManyToMany',
          sourceTableId: projectsId,
          targetTableId: projectsId, // placeholder \u2014 contacts table is in crm.ts
          junctionTableName: 'project_contacts',
          sourceFieldName: 'project_id',
          targetFieldName: 'contact_id',
          isRequired: false,
          ...m2mOpts,
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 projects <-> contacts');

  console.log('\n\u2705 Projects Schema complete!\n');
}

export { main as default };
