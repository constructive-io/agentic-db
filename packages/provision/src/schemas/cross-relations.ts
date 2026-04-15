/**
 * cross-relations.ts — Cross-domain relations (declarative definition)
 *
 * Creates junction tables and FKs that span multiple schema domains.
 * Must run AFTER all individual schema modules so table IDs can be resolved.
 *
 * M:N junctions:
 *   projects <-> contacts, tasks <-> contacts, tasks <-> projects, goals <-> habits,
 *   goals <-> projects, calendar_events <-> contacts, expenses <-> contacts,
 *   agents <-> prompts,
 *   contacts <-> notes, companies <-> notes, deals <-> notes,
 *   events <-> notes, tasks <-> notes, contacts <-> memories,
 *   companies <-> memories,
 *   email_threads <-> contacts, emails <-> contacts, emails <-> notes,
 *   calendar_events <-> contacts, calendar_events <-> notes, calendar_events <-> tasks
 *
 * BelongsTo (cross-schema):
 *   emails -> contacts (from_contact_id FK)
 *   calendar_events -> contacts (organizer_contact_id FK)
 *   calendar_attendees -> contacts (contact_id FK)
 *
 * BelongsTo:
 *   memories -> agents (agent_id FK)
 *   activity_logs -> habits (habit_id FK)
 */

import { requireDatabaseId } from '../helpers';

const databaseId = requireDatabaseId();

// ---------------------------------------------------------------------------
// Declarative relation definitions
// ---------------------------------------------------------------------------

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
  { sourceTable: 'tasks',           targetTable: 'projects',  junctionTableName: 'task_projects',           sourceFieldName: 'task_id',           targetFieldName: 'project_id' },
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

  // Email & calendar cross-relations
  { sourceTable: 'email_threads',    targetTable: 'contacts',  junctionTableName: 'thread_participants',     sourceFieldName: 'email_thread_id',   targetFieldName: 'contact_id' },
  { sourceTable: 'emails',           targetTable: 'contacts',  junctionTableName: 'email_recipients',        sourceFieldName: 'email_id',          targetFieldName: 'contact_id' },
  { sourceTable: 'emails',           targetTable: 'notes',     junctionTableName: 'email_notes',             sourceFieldName: 'email_id',          targetFieldName: 'note_id' },
  // calendar_events <-> contacts already defined above (line 98)
  { sourceTable: 'calendar_events',  targetTable: 'notes',     junctionTableName: 'calendar_event_notes',    sourceFieldName: 'calendar_event_id', targetFieldName: 'note_id' },
  { sourceTable: 'calendar_events',  targetTable: 'tasks',     junctionTableName: 'calendar_event_tasks',    sourceFieldName: 'calendar_event_id', targetFieldName: 'task_id' },
];

const BELONGS_TO_RELATIONS: BelongsToRelation[] = [
  { sourceTable: 'memories', targetTable: 'agents', fieldName: 'agent_id', deleteAction: 'n', isRequired: false },
  // Runtime cross-schema FK
  { sourceTable: 'tool_executions', targetTable: 'tool_definitions', fieldName: 'tool_definition_id', deleteAction: 'c', isRequired: true },
  // Life-OS cross-schema FKs
  { sourceTable: 'expenses', targetTable: 'trips', fieldName: 'trip_id', deleteAction: 'n', isRequired: false },
  { sourceTable: 'activity_logs', targetTable: 'habits', fieldName: 'habit_id', deleteAction: 'n', isRequired: false },
  // Email & calendar BelongsTo contacts
  { sourceTable: 'emails', targetTable: 'contacts', fieldName: 'from_contact_id', deleteAction: 'n', isRequired: false },
  { sourceTable: 'calendar_events', targetTable: 'contacts', fieldName: 'organizer_contact_id', deleteAction: 'n', isRequired: false },
  { sourceTable: 'calendar_attendees', targetTable: 'contacts', fieldName: 'contact_id', deleteAction: 'n', isRequired: false },
];

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  console.log('\n🔗 Cross-Domain Relations\n');
  console.log(`   ${M2N_RELATIONS.length} M:N junctions + ${BELONGS_TO_RELATIONS.length} BelongsTo FKs\n`);

  // Use direct SQL provision_relation calls (bypasses both GraphQL SDK
  // triggers and blueprint validation that requires non-empty tables array)
  const { Pool } = await import('pg');
  const pool = new Pool({ database: process.env.PGDATABASE || 'constructive' });
  try {
    await pool.query('SET statement_timeout = \'600s\'');

    // Resolve app_public schema id (needed to disambiguate tables like
    // 'emails' which also exist in user_identifiers_public)
    const { rows: schemaRows } = await pool.query(
      `SELECT id FROM metaschema_public.schema
       WHERE database_id = $1 AND name = 'app_public' LIMIT 1`,
      [databaseId]
    );
    const appSchemaId = schemaRows[0]?.id;
    if (!appSchemaId) throw new Error('Could not resolve app_public schema id');

    // Helper: resolve table id scoped to app_public (avoids ambiguity
    // when a table name like 'emails' exists in multiple schemas)
    async function resolveTableId(name: string): Promise<string> {
      const { rows } = await pool.query(
        `SELECT id FROM metaschema_public."table"
         WHERE database_id = $1 AND schema_id = $2 AND name = $3 LIMIT 1`,
        [databaseId, appSchemaId, name]
      );
      if (!rows[0]?.id) throw new Error(`Table '${name}' not found in app_public`);
      return rows[0].id;
    }

    // -- M:N junctions --
    for (const rel of M2N_RELATIONS) {
      try {
        const sourceId = await resolveTableId(rel.sourceTable);
        const targetId = await resolveTableId(rel.targetTable);
        await pool.query(
          `SELECT metaschema_modules_public.provision_relation(
            database_id := $1::uuid,
            relation_type := 'RelationManyToMany',
            source_table_id := $2::uuid,
            target_table_id := $3::uuid,
            junction_table_name := $4,
            source_field_name := $5,
            target_field_name := $6,
            is_required := false,
            grant_roles := ARRAY[]::text[],
            grants := '[]'::jsonb,
            policies := '[]'::jsonb
          )`,
          [databaseId, sourceId, targetId, rel.junctionTableName, rel.sourceFieldName, rel.targetFieldName]
        );
        console.log(`   ✓ ${rel.sourceTable} <-> ${rel.targetTable} (${rel.junctionTableName})`);
      } catch (err: unknown) {
        const msg = err instanceof Error ? err.message : String(err);
        if (msg.includes('already exists')) {
          console.log(`   • ${rel.junctionTableName} (exists)`);
        } else {
          console.error(`   ✗ ${rel.junctionTableName}: ${msg.slice(0, 200)}`);
        }
      }
    }

    // -- BelongsTo FKs --
    for (const rel of BELONGS_TO_RELATIONS) {
      try {
        const sourceId = await resolveTableId(rel.sourceTable);
        const targetId = await resolveTableId(rel.targetTable);
        await pool.query(
          `SELECT metaschema_modules_public.provision_relation(
            database_id := $1::uuid,
            relation_type := 'RelationBelongsTo',
            source_table_id := $2::uuid,
            target_table_id := $3::uuid,
            field_name := $4,
            delete_action := $5,
            is_required := $6::boolean,
            grant_roles := ARRAY[]::text[],
            grants := '[]'::jsonb,
            policies := '[]'::jsonb
          )`,
          [databaseId, sourceId, targetId, rel.fieldName, rel.deleteAction, rel.isRequired]
        );
        console.log(`   ✓ ${rel.sourceTable} -> ${rel.targetTable} (${rel.fieldName} FK)`);
      } catch (err: unknown) {
        const msg = err instanceof Error ? err.message : String(err);
        if (msg.includes('already exists')) {
          console.log(`   • ${rel.sourceTable} -> ${rel.targetTable} FK (exists)`);
        } else {
          console.error(`   ✗ ${rel.sourceTable} -> ${rel.targetTable} FK: ${msg.slice(0, 200)}`);
        }
      }
    }

    console.log(`\n✅ Cross-relations complete!\n`);
  } finally {
    await pool.end();
  }
}

export { main as default };
