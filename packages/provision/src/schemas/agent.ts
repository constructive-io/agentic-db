/**
 * agent.ts \u2014 Agent Core domain schema
 *
 * Tables: tasks, rules, memories, skills, goals
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
  console.log('\n\ud83e\udde0 Agent Core Schema\n');

  // -- Tasks ----------------------------------------------------------------
  console.log('\ud83d\udccc tasks...');
  const tasksId = await createOrgTable('tasks');
  await addField(tasksId, 'title', 'text', { isRequired: true });
  await addField(tasksId, 'description', 'text');
  await addField(tasksId, 'status', 'text', { defaultValue: "'todo'" });
  await addField(tasksId, 'priority', 'int');
  await addField(tasksId, 'project_id', 'uuid');
  await addField(tasksId, 'assigned_agent_id', 'uuid');
  await addField(tasksId, 'parent_task_id', 'uuid');
  await addField(tasksId, 'due_date', 'timestamptz');
  await addField(tasksId, 'completed_at', 'timestamptz');
  await addField(tasksId, 'conversation_id', 'uuid');
  await addField(tasksId, 'dependencies', 'uuid[]');
  await addField(tasksId, 'tags', 'citext[]');
  await addField(tasksId, 'embedding_text', 'text');
  await addField(tasksId, 'embedding', 'vector(768)');

  // -- Rules ----------------------------------------------------------------
  console.log('\n\ud83d\udcdc rules...');
  const rulesId = await createOrgTable('rules');
  await addField(rulesId, 'title', 'text', { isRequired: true });
  await addField(rulesId, 'content', 'text');
  await addField(rulesId, 'kind', 'text');
  await addField(rulesId, 'severity', 'text');
  await addField(rulesId, 'is_active', 'bool', { defaultValue: 'true' });
  await addField(rulesId, 'slug', 'text');
  await addField(rulesId, 'verification', 'text');
  await addField(rulesId, 'tags', 'citext[]');
  await addField(rulesId, 'embedding_text', 'text');
  await addField(rulesId, 'embedding', 'vector(768)');
  await addField(rulesId, 'trigger_concept', 'vector(768)');

  // -- Memories -------------------------------------------------------------
  console.log('\n\ud83d\udca1 memories...');
  const memoriesId = await createOrgTable('memories');
  await addField(memoriesId, 'content', 'text', { isRequired: true });
  await addField(memoriesId, 'importance', 'int');
  await addField(memoriesId, 'verified', 'bool', { defaultValue: 'false' });
  await addField(memoriesId, 'source', 'text');
  await addField(memoriesId, 'tags', 'citext[]');
  await addField(memoriesId, 'embedding_text', 'text');
  await addField(memoriesId, 'embedding', 'vector(768)');

  // -- Skills ---------------------------------------------------------------
  console.log('\n\ud83d\udee0\ufe0f  skills...');
  const skillsId = await createOrgTable('skills');
  await addField(skillsId, 'name', 'text', { isRequired: true });
  await addField(skillsId, 'slug', 'text');
  await addField(skillsId, 'description', 'text');
  await addField(skillsId, 'content', 'text');
  await addField(skillsId, 'procedure', 'text');
  await addField(skillsId, 'interface', 'jsonb');
  await addField(skillsId, 'requirements', 'jsonb');
  await addField(skillsId, 'file_path', 'text');
  await addField(skillsId, 'content_hash', 'text');
  await addField(skillsId, 'is_active', 'bool', { defaultValue: 'true' });
  await addField(skillsId, 'tags', 'citext[]');
  await addField(skillsId, 'embedding_text', 'text');
  await addField(skillsId, 'embedding', 'vector(768)');
  await addField(skillsId, 'intent_trigger', 'vector(768)');

  // -- Goals ----------------------------------------------------------------
  console.log('\n\ud83c\udfaf goals...');
  const goalsId = await createOrgTable('goals');
  await addField(goalsId, 'title', 'text', { isRequired: true });
  await addField(goalsId, 'description', 'text');
  await addField(goalsId, 'target_date', 'timestamptz');
  await addField(goalsId, 'status', 'text', { defaultValue: "'active'" });
  await addField(goalsId, 'category', 'text');
  await addField(goalsId, 'progress_pct', 'int', { defaultValue: '0' });
  await addField(goalsId, 'tags', 'citext[]');
  await addField(goalsId, 'embedding_text', 'text');
  await addField(goalsId, 'embedding', 'vector(768)');

  // -- Relations ------------------------------------------------------------
  console.log('\n\ud83d\udd17 Relations...');

  // tasks self-referential (parent)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationBelongsTo',
          sourceTableId: tasksId,
          targetTableId: tasksId,
          fieldName: 'parent_task_id',
          sourceFieldName: 'parent_task_id',
          targetFieldName: 'id',
          deleteAction: 'n',
          isRequired: false,
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 tasks -> tasks (parent)');

  console.log('\n\u2705 Agent Core Schema complete!\n');
}

main().catch((err) => {
  console.error('\u274c', err.message ?? err);
  process.exit(1);
});
