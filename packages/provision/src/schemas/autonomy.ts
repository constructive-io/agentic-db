/**
 * autonomy.ts \u2014 Autonomy domain schema
 *
 * Tables: ideas, reminders, habits, habit_logs, lists, list_items,
 *         notifications, recipes, templates
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
  console.log('\n\ud83d\udca1 Autonomy Schema\n');

  // -- Ideas ----------------------------------------------------------------
  console.log('\ud83d\udca1 ideas...');
  const ideasId = await createOrgTable('ideas');
  await addField(ideasId, 'content', 'text', { isRequired: true });
  await addField(ideasId, 'source', 'text');
  await addField(ideasId, 'status', 'text', { defaultValue: "'captured'" });
  await addField(ideasId, 'tags', 'citext[]');
  await addField(ideasId, 'embedding_text', 'text');
  await addField(ideasId, 'embedding', 'vector(768)');

  // -- Reminders ------------------------------------------------------------
  console.log('\n\u23f0 reminders...');
  const remindersId = await createOrgTable('reminders');
  await addField(remindersId, 'title', 'text', { isRequired: true });
  await addField(remindersId, 'due_at', 'timestamptz');
  await addField(remindersId, 'completed_at', 'timestamptz');
  await addField(remindersId, 'recurrence', 'text');
  await addField(remindersId, 'status', 'text', { defaultValue: "'pending'" });
  await addField(remindersId, 'related_entity_id', 'uuid');
  await addField(remindersId, 'related_entity_type', 'text');
  await addField(remindersId, 'embedding_text', 'text');
  await addField(remindersId, 'embedding', 'vector(768)');

  // -- Habits ---------------------------------------------------------------
  console.log('\n\ud83d\udcaa habits...');
  const habitsId = await createOrgTable('habits');
  await addField(habitsId, 'name', 'text', { isRequired: true });
  await addField(habitsId, 'frequency', 'text');
  await addField(habitsId, 'target_count', 'int');
  await addField(habitsId, 'current_streak', 'int', { defaultValue: '0' });
  await addField(habitsId, 'best_streak', 'int', { defaultValue: '0' });
  await addField(habitsId, 'category', 'text');
  await addField(habitsId, 'tags', 'citext[]');
  await addField(habitsId, 'embedding_text', 'text');
  await addField(habitsId, 'embedding', 'vector(768)');

  // -- Habit Logs -----------------------------------------------------------
  // Polymorphic activity log: real columns for aggregatable measures,
  // JSONB `data` for activity-specific extras (exercises array, stroke type, pace, etc.)
  console.log('\n\ud83d\udcdd habit_logs...');
  const habitLogsId = await createOrgTable('habit_logs');
  await addField(habitLogsId, 'habit_id', 'uuid', { isRequired: true });
  await addField(habitLogsId, 'completed_at', 'timestamptz', { isRequired: true });
  await addField(habitLogsId, 'activity_type', 'text');
  await addField(habitLogsId, 'duration_minutes', 'numeric');
  await addField(habitLogsId, 'distance', 'numeric');
  await addField(habitLogsId, 'distance_unit', 'text');
  await addField(habitLogsId, 'reps', 'int');
  await addField(habitLogsId, 'sets', 'int');
  await addField(habitLogsId, 'weight_amount', 'numeric');
  await addField(habitLogsId, 'weight_unit', 'text');
  await addField(habitLogsId, 'calories', 'numeric');
  await addField(habitLogsId, 'data', 'jsonb', { defaultValue: "'{}'" });
  await addField(habitLogsId, 'notes', 'text');
  await addField(habitLogsId, 'tags', 'citext[]');

  // -- Lists ----------------------------------------------------------------
  console.log('\n\ud83d\udcdd lists...');
  const listsId = await createOrgTable('lists');
  await addField(listsId, 'name', 'text', { isRequired: true });
  await addField(listsId, 'description', 'text');
  await addField(listsId, 'type', 'text');
  await addField(listsId, 'tags', 'citext[]');
  await addField(listsId, 'embedding_text', 'text');
  await addField(listsId, 'embedding', 'vector(768)');

  // -- List Items -----------------------------------------------------------
  console.log('\n\ud83d\udccb list_items...');
  const listItemsId = await createOrgTable('list_items');
  await addField(listItemsId, 'list_id', 'uuid', { isRequired: true });
  await addField(listItemsId, 'content', 'text');
  await addField(listItemsId, 'position', 'int');
  await addField(listItemsId, 'is_checked', 'bool', { defaultValue: 'false' });
  await addField(listItemsId, 'entity_id', 'uuid');
  await addField(listItemsId, 'entity_type', 'text');

  // -- Notifications --------------------------------------------------------
  console.log('\n\ud83d\udd14 notifications...');
  const notificationsId = await createOrgTable('notifications');
  await addField(notificationsId, 'title', 'text');
  await addField(notificationsId, 'body', 'text');
  await addField(notificationsId, 'type', 'text');
  await addField(notificationsId, 'priority', 'text');
  await addField(notificationsId, 'read_at', 'timestamptz');
  await addField(notificationsId, 'action_url', 'text');
  await addField(notificationsId, 'source_entity_id', 'uuid');
  await addField(notificationsId, 'source_entity_type', 'text');

  // -- Recipes --------------------------------------------------------------
  console.log('\n\ud83c\udf73 recipes...');
  const recipesId = await createOrgTable('recipes');
  await addField(recipesId, 'name', 'text', { isRequired: true });
  await addField(recipesId, 'description', 'text');
  await addField(recipesId, 'cuisine', 'text');
  await addField(recipesId, 'prep_time_minutes', 'int');
  await addField(recipesId, 'cook_time_minutes', 'int');
  await addField(recipesId, 'servings', 'int');
  await addField(recipesId, 'difficulty', 'text');       // easy | medium | hard
  await addField(recipesId, 'ingredients', 'jsonb');
  await addField(recipesId, 'instructions', 'jsonb');
  await addField(recipesId, 'source_url', 'text');
  await addField(recipesId, 'image_url', 'text');
  await addField(recipesId, 'tags', 'citext[]');
  await addField(recipesId, 'embedding_text', 'text');
  await addField(recipesId, 'embedding', 'vector(768)');

  // -- Templates --------------------------------------------------------------
  console.log('\n\ud83d\udccb templates...');
  const templatesId = await createOrgTable('templates');
  await addField(templatesId, 'name', 'text', { isRequired: true });
  await addField(templatesId, 'description', 'text');
  await addField(templatesId, 'type', 'text');            // task | email | project | checklist | workflow
  await addField(templatesId, 'content', 'jsonb', { isRequired: true });
  await addField(templatesId, 'variables', 'jsonb');
  await addField(templatesId, 'is_active', 'bool', { defaultValue: 'true' });
  await addField(templatesId, 'tags', 'citext[]');
  await addField(templatesId, 'embedding_text', 'text');
  await addField(templatesId, 'embedding', 'vector(768)');

  // -- Relations ------------------------------------------------------------
  console.log('\n\ud83d\udd17 Relations...');

  // habits -> habit_logs (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: habitsId,
          targetTableId: habitLogsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 habits -> habit_logs');

  // lists -> list_items (HasMany)
  await withRetry(() =>
    client.relationProvision
      .create({
        data: {
          databaseId,
          relationType: 'RelationHasMany',
          sourceTableId: listsId,
          targetTableId: listItemsId,
          deleteAction: 'c',
        },
        select: { id: true },
      })
      .unwrap()
  );
  console.log('   \u2713 lists -> list_items');

  console.log('\n\u2705 Autonomy Schema complete!\n');
}

main().catch((err) => {
  console.error('\u274c', err.message ?? err);
  process.exit(1);
});
