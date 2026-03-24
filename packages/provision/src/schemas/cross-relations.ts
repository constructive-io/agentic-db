/**
 * cross-relations.ts — Cross-domain relations (declarative definition)
 *
 * Creates junction tables and FKs that span multiple schema domains.
 * Must run AFTER all individual schema modules so table IDs can be resolved.
 *
 * M:N junctions:
 *   projects <-> contacts, tasks <-> contacts, goals <-> habits,
 *   goals <-> projects, calendar_events <-> contacts, expenses <-> contacts,
 *   agents <-> prompts,
 *   contacts <-> notes, companies <-> notes, deals <-> notes,
 *   events <-> notes, tasks <-> notes, contacts <-> memories,
 *   companies <-> memories
 *
 * BelongsTo:
 *   memories -> agents (agent_id FK)
 */

import {
  createPlatformClient,
  requireDatabaseId,
  withRetry,
  entityPolicyData,
} from '../helpers';

const databaseId = requireDatabaseId();
const client = createPlatformClient();

// ---------------------------------------------------------------------------
// Resolve table names to IDs
// ---------------------------------------------------------------------------

async function fetchAllTables(): Promise<Map<string, string>> {
  const map = new Map<string, string>();
  const result = await withRetry(() =>
    client.table
      .findMany({
        first: 500,
        select: { id: true, name: true, databaseId: true },
      })
      .unwrap()
  );
  const nodes = (result as any)?.tables?.nodes ?? [];
  for (const n of nodes) {
    if (n.name && n.id && n.databaseId === databaseId) {
      map.set(n.name, n.id);
    }
  }
  return map;
}

// ---------------------------------------------------------------------------
// Declarative relation definitions
// ---------------------------------------------------------------------------

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

interface M2NRelation {
  sourceTable: string;
  targetTable: string;
  junctionTableName: string;
  sourceFieldName: string;
  targetFieldName: string;
}

interface BelongsToRelation {
  sourceTable: string;
  targetTable: string;
  fieldName: string;
  deleteAction: string;
  isRequired: boolean;
}

const M2N_RELATIONS: M2NRelation[] = [
  { sourceTable: 'projects',        targetTable: 'contacts',  junctionTableName: 'project_contacts',        sourceFieldName: 'project_id',        targetFieldName: 'contact_id' },
  { sourceTable: 'tasks',           targetTable: 'contacts',  junctionTableName: 'task_contacts',           sourceFieldName: 'task_id',           targetFieldName: 'contact_id' },
  { sourceTable: 'goals',           targetTable: 'habits',    junctionTableName: 'goal_habits',             sourceFieldName: 'goal_id',           targetFieldName: 'habit_id' },
  { sourceTable: 'goals',           targetTable: 'projects',  junctionTableName: 'goal_projects',           sourceFieldName: 'goal_id',           targetFieldName: 'project_id' },
  { sourceTable: 'calendar_events', targetTable: 'contacts',  junctionTableName: 'calendar_event_contacts', sourceFieldName: 'calendar_event_id', targetFieldName: 'contact_id' },
  { sourceTable: 'expenses',        targetTable: 'contacts',  junctionTableName: 'expense_contacts',        sourceFieldName: 'expense_id',        targetFieldName: 'contact_id' },
  // NOTE: agents <-> rules and agents <-> skills are HasMany in agent.ts (not M2N)
  { sourceTable: 'agents',          targetTable: 'prompts',   junctionTableName: 'agent_prompts',           sourceFieldName: 'agent_id',          targetFieldName: 'prompt_id' },
  { sourceTable: 'contacts',        targetTable: 'notes',     junctionTableName: 'contact_notes',           sourceFieldName: 'contact_id',        targetFieldName: 'note_id' },
  { sourceTable: 'companies',       targetTable: 'notes',     junctionTableName: 'company_notes',           sourceFieldName: 'company_id',        targetFieldName: 'note_id' },
  { sourceTable: 'deals',           targetTable: 'notes',     junctionTableName: 'deal_notes',              sourceFieldName: 'deal_id',           targetFieldName: 'note_id' },
  { sourceTable: 'events',          targetTable: 'notes',     junctionTableName: 'event_notes',             sourceFieldName: 'event_id',          targetFieldName: 'note_id' },
  { sourceTable: 'tasks',           targetTable: 'notes',     junctionTableName: 'task_notes',              sourceFieldName: 'task_id',           targetFieldName: 'note_id' },
  { sourceTable: 'contacts',        targetTable: 'memories',  junctionTableName: 'contact_memories',        sourceFieldName: 'contact_id',        targetFieldName: 'memory_id' },
  { sourceTable: 'companies',       targetTable: 'memories',  junctionTableName: 'company_memories',        sourceFieldName: 'company_id',        targetFieldName: 'memory_id' },
  { sourceTable: 'skills',          targetTable: 'tool_definitions', junctionTableName: 'skill_tools',      sourceFieldName: 'skill_id',          targetFieldName: 'tool_definition_id' },
];

const BELONGS_TO_RELATIONS: BelongsToRelation[] = [
  { sourceTable: 'memories', targetTable: 'agents', fieldName: 'agent_id', deleteAction: 'n', isRequired: false },
];

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  console.log('\n🔗 Cross-Domain Relations\n');

  const tables = await fetchAllTables();
  console.log(`   Resolved ${tables.size} tables\n`);

  let created = 0;
  let skipped = 0;

  // -- M:N junctions --------------------------------------------------------
  for (const rel of M2N_RELATIONS) {
    const sourceId = tables.get(rel.sourceTable);
    const targetId = tables.get(rel.targetTable);

    if (!sourceId) { console.log(`   ⚠ ${rel.junctionTableName}: source '${rel.sourceTable}' not found, skipping`); skipped++; continue; }
    if (!targetId) { console.log(`   ⚠ ${rel.junctionTableName}: target '${rel.targetTable}' not found, skipping`); skipped++; continue; }

    try {
      await withRetry(() =>
        client.relationProvision
          .create({
            data: {
              databaseId,
              relationType: 'RelationManyToMany',
              sourceTableId: sourceId,
              targetTableId: targetId,
              junctionTableName: rel.junctionTableName,
              sourceFieldName: rel.sourceFieldName,
              targetFieldName: rel.targetFieldName,
              isRequired: false,
              ...m2mOpts,
            },
            select: { id: true },
          })
          .unwrap()
      );
      created++;
      console.log(`   ✓ ${rel.sourceTable} <-> ${rel.targetTable} (${rel.junctionTableName})`);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : String(err);
      if (msg.includes('already exists') || msg.includes('exists')) {
        skipped++;
        console.log(`   • ${rel.junctionTableName} (exists)`);
      } else {
        console.error(`   ✗ ${rel.junctionTableName}: ${msg.slice(0, 120)}`);
      }
    }
  }

  // -- BelongsTo relations --------------------------------------------------
  for (const rel of BELONGS_TO_RELATIONS) {
    const sourceId = tables.get(rel.sourceTable);
    const targetId = tables.get(rel.targetTable);

    if (!sourceId) { console.log(`   ⚠ ${rel.sourceTable} -> ${rel.targetTable} FK: source not found`); continue; }
    if (!targetId) { console.log(`   ⚠ ${rel.sourceTable} -> ${rel.targetTable} FK: target not found`); continue; }

    try {
      await withRetry(() =>
        client.relationProvision
          .create({
            data: {
              databaseId,
              relationType: 'RelationBelongsTo',
              sourceTableId: sourceId,
              targetTableId: targetId,
              fieldName: rel.fieldName,
              sourceFieldName: rel.fieldName,
              targetFieldName: 'id',
              deleteAction: rel.deleteAction,
              isRequired: rel.isRequired,
            },
            select: { id: true },
          })
          .unwrap()
      );
      console.log(`   ✓ ${rel.sourceTable} -> ${rel.targetTable} (${rel.fieldName} FK)`);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : String(err);
      if (msg.includes('already exists') || msg.includes('exists')) {
        console.log(`   • ${rel.sourceTable} -> ${rel.targetTable} FK (exists)`);
      } else {
        console.error(`   ✗ ${rel.sourceTable} -> ${rel.targetTable} FK: ${msg.slice(0, 120)}`);
      }
    }
  }

  console.log(`\n✅ Cross-relations complete! Created: ${created}, Skipped: ${skipped}\n`);
}

export { main as default };
