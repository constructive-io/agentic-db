/**
 * cross-relations.ts — Cross-domain relations (declarative blueprint)
 *
 * Creates junction tables and FKs that span multiple schema domains. Must run
 * AFTER all individual domain schemas so the referenced tables already exist.
 *
 * Rides the same declarative provisionBlueprint() path as every other schema
 * here — no raw SQL, no manual table-ID resolution. Every relation carries
 * source_schema_name / target_schema_name = 'app_public' to disambiguate
 * tables like "emails" that also exist in user_identifiers_public.
 *
 * M:N junctions:
 *   projects <-> contacts, tasks <-> contacts, tasks <-> projects, goals <-> habits,
 *   goals <-> projects, calendar_events <-> contacts, expenses <-> contacts,
 *   agents <-> prompts,
 *   contacts <-> notes, companies <-> notes, deals <-> notes,
 *   events <-> notes, tasks <-> notes, contacts <-> memories,
 *   companies <-> memories,
 *   email_threads <-> contacts, emails <-> contacts, emails <-> notes,
 *   calendar_events <-> notes, calendar_events <-> tasks,
 *   skills <-> tool_definitions
 *
 * BelongsTo (cross-schema FKs):
 *   memories -> agents (agent_id), tool_executions -> tool_definitions,
 *   expenses -> trips, activity_logs -> habits,
 *   emails -> contacts, calendar_events -> contacts, calendar_attendees -> contacts
 *
 * RLS: junctions get RLS enabled by provision_relation; the top-level
 * provision.ts disables RLS globally after all schemas run, so no per-
 * junction cleanup is needed here.
 */

import {
  type BlueprintDefinition,
  type BlueprintRelation,
  provisionBlueprint,
} from '../blueprint';

const SCHEMA = 'app_public';

// ---------------------------------------------------------------------------
// M:N junctions
// ---------------------------------------------------------------------------

interface M2NSpec {
  source_table: string;
  target_table: string;
  junction_table_name: string;
  source_field_name: string;
  target_field_name: string;
}

const M2N: M2NSpec[] = [
  { source_table: 'projects',        target_table: 'contacts',         junction_table_name: 'project_contacts',        source_field_name: 'project_id',        target_field_name: 'contact_id' },
  { source_table: 'tasks',           target_table: 'contacts',         junction_table_name: 'task_contacts',           source_field_name: 'task_id',           target_field_name: 'contact_id' },
  { source_table: 'tasks',           target_table: 'projects',         junction_table_name: 'task_projects',           source_field_name: 'task_id',           target_field_name: 'project_id' },
  { source_table: 'goals',           target_table: 'habits',           junction_table_name: 'goal_habits',             source_field_name: 'goal_id',           target_field_name: 'habit_id' },
  { source_table: 'goals',           target_table: 'projects',         junction_table_name: 'goal_projects',           source_field_name: 'goal_id',           target_field_name: 'project_id' },
  { source_table: 'calendar_events', target_table: 'contacts',         junction_table_name: 'calendar_event_contacts', source_field_name: 'calendar_event_id', target_field_name: 'contact_id' },
  { source_table: 'expenses',        target_table: 'contacts',         junction_table_name: 'expense_contacts',        source_field_name: 'expense_id',        target_field_name: 'contact_id' },
  { source_table: 'agents',          target_table: 'prompts',          junction_table_name: 'agent_prompts',           source_field_name: 'agent_id',          target_field_name: 'prompt_id' },
  { source_table: 'contacts',        target_table: 'notes',            junction_table_name: 'contact_notes',           source_field_name: 'contact_id',        target_field_name: 'note_id' },
  { source_table: 'companies',       target_table: 'notes',            junction_table_name: 'company_notes',           source_field_name: 'company_id',        target_field_name: 'note_id' },
  { source_table: 'deals',           target_table: 'notes',            junction_table_name: 'deal_notes',              source_field_name: 'deal_id',           target_field_name: 'note_id' },
  { source_table: 'events',          target_table: 'notes',            junction_table_name: 'event_notes',             source_field_name: 'event_id',          target_field_name: 'note_id' },
  { source_table: 'tasks',           target_table: 'notes',            junction_table_name: 'task_notes',              source_field_name: 'task_id',           target_field_name: 'note_id' },
  { source_table: 'contacts',        target_table: 'memories',         junction_table_name: 'contact_memories',        source_field_name: 'contact_id',        target_field_name: 'memory_id' },
  { source_table: 'companies',       target_table: 'memories',         junction_table_name: 'company_memories',        source_field_name: 'company_id',        target_field_name: 'memory_id' },
  { source_table: 'skills',          target_table: 'tool_definitions', junction_table_name: 'skill_tools',             source_field_name: 'skill_id',          target_field_name: 'tool_definition_id' },
  { source_table: 'email_threads',   target_table: 'contacts',         junction_table_name: 'thread_participants',     source_field_name: 'email_thread_id',   target_field_name: 'contact_id' },
  { source_table: 'emails',          target_table: 'contacts',         junction_table_name: 'email_recipients',        source_field_name: 'email_id',          target_field_name: 'contact_id' },
  { source_table: 'emails',          target_table: 'notes',            junction_table_name: 'email_notes',             source_field_name: 'email_id',          target_field_name: 'note_id' },
  { source_table: 'calendar_events', target_table: 'notes',            junction_table_name: 'calendar_event_notes',    source_field_name: 'calendar_event_id', target_field_name: 'note_id' },
  { source_table: 'calendar_events', target_table: 'tasks',            junction_table_name: 'calendar_event_tasks',    source_field_name: 'calendar_event_id', target_field_name: 'task_id' },
];

// ---------------------------------------------------------------------------
// BelongsTo FKs (cross-schema)
// ---------------------------------------------------------------------------

interface BelongsToSpec {
  source_table: string;
  target_table: string;
  field_name: string;
  delete_action: 'c' | 'r' | 'n' | 'd' | 'a';
  is_required: boolean;
}

const BELONGS_TO: BelongsToSpec[] = [
  { source_table: 'memories',            target_table: 'agents',            field_name: 'agent_id',            delete_action: 'n', is_required: false },
  { source_table: 'tool_executions',     target_table: 'tool_definitions',  field_name: 'tool_definition_id',  delete_action: 'c', is_required: true  },
  { source_table: 'expenses',            target_table: 'trips',             field_name: 'trip_id',             delete_action: 'n', is_required: false },
  { source_table: 'activity_logs',       target_table: 'habits',            field_name: 'habit_id',            delete_action: 'n', is_required: false },
  { source_table: 'emails',              target_table: 'contacts',          field_name: 'from_contact_id',     delete_action: 'n', is_required: false },
  { source_table: 'calendar_events',     target_table: 'contacts',          field_name: 'organizer_contact_id', delete_action: 'n', is_required: false },
  { source_table: 'calendar_attendees',  target_table: 'contacts',          field_name: 'contact_id',          delete_action: 'n', is_required: false },
];

// ---------------------------------------------------------------------------
// Build the relations array
// ---------------------------------------------------------------------------

const relations: BlueprintRelation[] = [
  ...M2N.map((r): BlueprintRelation => ({
    $type: 'RelationManyToMany',
    source_table: r.source_table,
    source_schema_name: SCHEMA,
    target_table: r.target_table,
    target_schema_name: SCHEMA,
    junction_table_name: r.junction_table_name,
    source_field_name: r.source_field_name,
    target_field_name: r.target_field_name,
  })),
  ...BELONGS_TO.map((r): BlueprintRelation => ({
    $type: 'RelationBelongsTo',
    source_table: r.source_table,
    source_schema_name: SCHEMA,
    target_table: r.target_table,
    target_schema_name: SCHEMA,
    field_name: r.field_name,
    delete_action: r.delete_action,
    is_required: r.is_required,
  })),
];

const definition: BlueprintDefinition = {
  // No new tables — all referenced tables were created by upstream domain schemas.
  tables: [],
  relations,
};

async function main() {
  await provisionBlueprint(definition, 'Cross-Relations');
}

export { main as default };
