/**
 * autonomy.ts — Autonomy domain schema (blueprint definition)
 *
 * Tables: ideas, reminders, habits, habit_logs, lists, recipes, templates
 * Chunk tables: idea_chunks, reminder_chunks, list_chunks, recipe_chunks, template_chunks
 */

import {
  type BlueprintDefinition,
  orgTable,
  chunkTable,
  hasManyChunks,
  provisionBlueprint,
  f,
  req,
  EMBEDDING_FIELDS,
} from '../blueprint';

// ---------------------------------------------------------------------------
// Blueprint definition
// ---------------------------------------------------------------------------

const definition: BlueprintDefinition = {
  tables: [
    // -- Ideas ----------------------------------------------------------------
    orgTable('ideas', [
      req('content', 'text'),
      f('source', 'text'),
      f('status', 'text', { default_value: "'captured'" }),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Reminders ------------------------------------------------------------
    orgTable('reminders', [
      req('title', 'text'),
      f('due_at', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('recurrence', 'text'),
      f('status', 'text', { default_value: "'pending'" }),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Habits ---------------------------------------------------------------
    orgTable('habits', [
      req('name', 'text'),
      f('frequency', 'text'),
      f('target_count', 'int'),
      f('current_streak', 'int', { default_value: '0' }),
      f('best_streak', 'int', { default_value: '0' }),
      f('category', 'text'),
      f('tags', 'citext[]'),
    ]),

    // -- Habit Logs -----------------------------------------------------------
    orgTable('habit_logs', [
      req('habit_id', 'uuid'),
      req('completed_at', 'timestamptz'),
      f('activity_type', 'text'),
      f('duration_minutes', 'numeric'),
      f('distance', 'numeric'),
      f('distance_unit', 'text'),
      f('reps', 'int'),
      f('sets', 'int'),
      f('weight_amount', 'numeric'),
      f('weight_unit', 'text'),
      f('calories', 'numeric'),
      f('data', 'jsonb', { default_value: "'{}'" }),
      f('notes', 'text'),
      f('tags', 'citext[]'),
    ]),

    // -- Lists ----------------------------------------------------------------
    orgTable('lists', [
      req('name', 'text'),
      f('description', 'text'),
      f('type', 'text'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Recipes --------------------------------------------------------------
    orgTable('recipes', [
      req('name', 'text'),
      f('description', 'text'),
      f('cuisine', 'text'),
      f('prep_time_minutes', 'int'),
      f('cook_time_minutes', 'int'),
      f('servings', 'int'),
      f('difficulty', 'text'),
      f('ingredients', 'jsonb'),
      f('instructions', 'jsonb'),
      f('source_url', 'text'),
      f('image_url', 'text'),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Templates ------------------------------------------------------------
    orgTable('templates', [
      req('name', 'text'),
      f('description', 'text'),
      f('type', 'text'),
      req('content', 'jsonb'),
      f('variables', 'jsonb'),
      f('is_active', 'bool', { default_value: 'true' }),
      f('tags', 'citext[]'),
      ...EMBEDDING_FIELDS,
    ]),

    // -- Chunk tables ---------------------------------------------------------
    chunkTable('ideas'),
    chunkTable('reminders'),
    chunkTable('lists'),
    chunkTable('recipes'),
    chunkTable('templates'),
  ],

  relations: [
    // habits -> habit_logs (HasMany)
    { $type: 'RelationHasMany', source_ref: 'habits', target_ref: 'habit_logs', delete_action: 'c' },

    // Chunk table relations (parent -> chunks, CASCADE delete)
    hasManyChunks('ideas'),
    hasManyChunks('reminders'),
    hasManyChunks('lists'),
    hasManyChunks('recipes'),
    hasManyChunks('templates'),
  ],
};

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

async function main() {
  await provisionBlueprint(definition, 'Autonomy Schema');
}

export { main as default };
