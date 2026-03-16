/**
 * cross-relations.ts — Cross-domain M:N relations
 *
 * Creates junction tables that span multiple schema domains.
 * Must run AFTER all individual schema modules so table IDs can be resolved.
 *
 * Relations:
 *   projects <-> contacts   (project_contacts)
 *   tasks    <-> contacts   (task_contacts)
 *   goals    <-> habits     (goal_habits)
 *   goals    <-> projects   (goal_projects)
 *   calendar_events <-> contacts (calendar_event_contacts)
 *   expenses <-> contacts   (expense_contacts)
 *   agents   <-> skills     (agent_skills)
 *   agents   <-> rules      (agent_rules)
 *   agents   <-> prompts    (agent_prompts)
 *   contacts <-> notes      (contact_notes)
 *   companies <-> notes     (company_notes)
 *   deals    <-> notes      (deal_notes)
 *   events   <-> notes      (event_notes)
 *   tasks    <-> notes      (task_notes)
 *   contacts <-> memories   (contact_memories)
 *   companies <-> memories  (company_memories)
 *
 * BelongsTo:
 *   memories -> agents      (agent_id FK)
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
  // Fetch all tables (no filter param — filter client-side by databaseId)
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
// M:N relation helper
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

const CROSS_RELATIONS: M2NRelation[] = [
  {
    sourceTable: 'projects',
    targetTable: 'contacts',
    junctionTableName: 'project_contacts',
    sourceFieldName: 'project_id',
    targetFieldName: 'contact_id',
  },
  {
    sourceTable: 'tasks',
    targetTable: 'contacts',
    junctionTableName: 'task_contacts',
    sourceFieldName: 'task_id',
    targetFieldName: 'contact_id',
  },
  {
    sourceTable: 'goals',
    targetTable: 'habits',
    junctionTableName: 'goal_habits',
    sourceFieldName: 'goal_id',
    targetFieldName: 'habit_id',
  },
  {
    sourceTable: 'goals',
    targetTable: 'projects',
    junctionTableName: 'goal_projects',
    sourceFieldName: 'goal_id',
    targetFieldName: 'project_id',
  },
  {
    sourceTable: 'calendar_events',
    targetTable: 'contacts',
    junctionTableName: 'calendar_event_contacts',
    sourceFieldName: 'calendar_event_id',
    targetFieldName: 'contact_id',
  },
  {
    sourceTable: 'expenses',
    targetTable: 'contacts',
    junctionTableName: 'expense_contacts',
    sourceFieldName: 'expense_id',
    targetFieldName: 'contact_id',
  },
  {
    sourceTable: 'agents',
    targetTable: 'skills',
    junctionTableName: 'agent_skills',
    sourceFieldName: 'agent_id',
    targetFieldName: 'skill_id',
  },
  {
    sourceTable: 'agents',
    targetTable: 'rules',
    junctionTableName: 'agent_rules',
    sourceFieldName: 'agent_id',
    targetFieldName: 'rule_id',
  },
  {
    sourceTable: 'agents',
    targetTable: 'prompts',
    junctionTableName: 'agent_prompts',
    sourceFieldName: 'agent_id',
    targetFieldName: 'prompt_id',
  },
  // -- Notes M:N junctions (replaces polymorphic notable_type/notable_id) --
  {
    sourceTable: 'contacts',
    targetTable: 'notes',
    junctionTableName: 'contact_notes',
    sourceFieldName: 'contact_id',
    targetFieldName: 'note_id',
  },
  {
    sourceTable: 'companies',
    targetTable: 'notes',
    junctionTableName: 'company_notes',
    sourceFieldName: 'company_id',
    targetFieldName: 'note_id',
  },
  {
    sourceTable: 'deals',
    targetTable: 'notes',
    junctionTableName: 'deal_notes',
    sourceFieldName: 'deal_id',
    targetFieldName: 'note_id',
  },
  {
    sourceTable: 'events',
    targetTable: 'notes',
    junctionTableName: 'event_notes',
    sourceFieldName: 'event_id',
    targetFieldName: 'note_id',
  },
  {
    sourceTable: 'tasks',
    targetTable: 'notes',
    junctionTableName: 'task_notes',
    sourceFieldName: 'task_id',
    targetFieldName: 'note_id',
  },
  // -- Memories M:N junctions (replaces polymorphic related_entity_type/id) --
  {
    sourceTable: 'contacts',
    targetTable: 'memories',
    junctionTableName: 'contact_memories',
    sourceFieldName: 'contact_id',
    targetFieldName: 'memory_id',
  },
  {
    sourceTable: 'companies',
    targetTable: 'memories',
    junctionTableName: 'company_memories',
    sourceFieldName: 'company_id',
    targetFieldName: 'memory_id',
  },
];

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  console.log('\n\ud83d\udd17 Cross-Domain Relations\n');

  const tables = await fetchAllTables();
  console.log(`   Resolved ${tables.size} tables\n`);

  let created = 0;
  let skipped = 0;

  for (const rel of CROSS_RELATIONS) {
    const sourceId = tables.get(rel.sourceTable);
    const targetId = tables.get(rel.targetTable);

    if (!sourceId) {
      console.log(`   \u26a0 ${rel.junctionTableName}: source '${rel.sourceTable}' not found, skipping`);
      skipped++;
      continue;
    }
    if (!targetId) {
      console.log(`   \u26a0 ${rel.junctionTableName}: target '${rel.targetTable}' not found, skipping`);
      skipped++;
      continue;
    }

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
      console.log(`   \u2713 ${rel.sourceTable} <-> ${rel.targetTable} (${rel.junctionTableName})`);
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : String(err);
      if (msg.includes('already exists') || msg.includes('exists')) {
        skipped++;
        console.log(`   \u2022 ${rel.junctionTableName} (exists)`);
      } else {
        console.error(`   \u2717 ${rel.junctionTableName}: ${msg.slice(0, 120)}`);
      }
    }
  }

  // -- BelongsTo: memories -> agents (agent_id FK) --
  // memories.agent_id was added in agent.ts; now wire up the FK to agents in runtime.ts
  const memoriesId = tables.get('memories');
  const agentsId = tables.get('agents');
  if (memoriesId && agentsId) {
    try {
      await withRetry(() =>
        client.relationProvision
          .create({
            data: {
              databaseId,
              relationType: 'RelationBelongsTo',
              sourceTableId: memoriesId,
              targetTableId: agentsId,
              fieldName: 'agent_id',
              sourceFieldName: 'agent_id',
              targetFieldName: 'id',
              deleteAction: 'n',
              isRequired: false,
            },
            select: { id: true },
          })
          .unwrap()
      );
      console.log('   \u2713 memories -> agents (agent_id FK)');
    } catch (err: unknown) {
      const msg = err instanceof Error ? err.message : String(err);
      if (msg.includes('already exists') || msg.includes('exists')) {
        console.log('   \u2022 memories -> agents FK (exists)');
      } else {
        console.error(`   \u2717 memories -> agents FK: ${msg.slice(0, 120)}`);
      }
    }
  } else {
    if (!memoriesId) console.log('   \u26a0 memories -> agents FK: memories table not found');
    if (!agentsId) console.log('   \u26a0 memories -> agents FK: agents table not found');
  }

  console.log(`\n\u2705 Cross-relations complete! Created: ${created}, Skipped: ${skipped}\n`);
}

export { main as default };
