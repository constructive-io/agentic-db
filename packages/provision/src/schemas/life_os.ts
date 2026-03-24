/**
 * life_os.ts - Life OS schema (blueprint definition)
 *
 * Data* nodes: DataSearch, DataPostGIS
 */

import {
  type BlueprintDefinition,
  orgTable,
  provisionBlueprint,
  f,
  req,
  M2M_JUNCTION_OPTS,
  dataSearch,
  dataPostGIS,
  btreeIndex,
  ginIndex,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Trips --------------------------------------------------------------
    orgTable('trips', [
      req('name', 'text'),
      f('description', 'text'),
      f('destination', 'text'),
      f('started_at', 'timestamptz'),
      f('ended_at', 'timestamptz'),
      f('status', 'text', { default_value: "'planning'" }),
      f('budget', 'numeric'),
      f('currency', 'text', { default_value: "'USD'" }),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'destination'],
          chunks: true,
        }),
        dataPostGIS({ field_name: 'location', use_geography: true }),
      ]),

    // -- Places -------------------------------------------------------------
    orgTable('places', [
      req('name', 'text'),
      f('description', 'text'),
      f('address', 'text'),
      f('city', 'text'),
      f('country', 'text'),
      f('category', 'text'),
      f('rating', 'numeric'),
      f('notes', 'text'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'notes'],
          chunks: true,
        }),
        dataPostGIS({ field_name: 'location', use_geography: true }),
      ]),

    // -- Itinerary Items ----------------------------------------------------
    orgTable('itinerary_items', [
      req('trip_id', 'uuid'),
      req('name', 'text'),
      f('description', 'text'),
      f('day_number', 'int'),
      f('start_time', 'timestamptz'),
      f('end_time', 'timestamptz'),
      f('place_id', 'uuid'),
      f('category', 'text'),
      f('cost', 'numeric'),
      f('notes', 'text'),
      f('sort_order', 'int', { default_value: '0' }),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'notes'],
          chunks: true,
        }),
      ]),

    // -- Hiking Trails ------------------------------------------------------
    orgTable('hiking_trails', [
      req('name', 'text'),
      f('description', 'text'),
      f('difficulty', 'text'),
      f('distance_km', 'numeric'),
      f('elevation_gain_m', 'numeric'),
      f('estimated_time_hours', 'numeric'),
      f('trail_type', 'text'),
      f('region', 'text'),
      f('notes', 'text'),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description', 'region'],
          chunks: true,
        }),
        dataPostGIS({ field_name: 'location', use_geography: true }),
      ]),

    // -- Memories -----------------------------------------------------------
    orgTable('memories', [
      req('title', 'text'),
      f('content', 'text'),
      f('occurred_at', 'timestamptz'),
      f('location', 'text'),
      f('mood', 'text'),
      f('importance', 'int', { default_value: '5' }),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['title', 'content'],
          chunks: true,
        }),
        dataPostGIS({ field_name: 'location_geo', use_geography: true }),
      ]),

    // -- Goals --------------------------------------------------------------
    orgTable('goals', [
      req('title', 'text'),
      f('description', 'text'),
      f('category', 'text'),
      f('status', 'text', { default_value: "'active'" }),
      f('priority', 'int', { default_value: '0' }),
      f('target_date', 'timestamptz'),
      f('completed_at', 'timestamptz'),
      f('progress', 'numeric', { default_value: '0' }),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['title', 'description'],
          chunks: true,
        }),
      ]),

    // -- Habits -------------------------------------------------------------
    orgTable('habits', [
      req('name', 'text'),
      f('description', 'text'),
      f('frequency', 'text', { default_value: "'daily'" }),
      f('target_count', 'int', { default_value: '1' }),
      f('current_streak', 'int', { default_value: '0' }),
      f('best_streak', 'int', { default_value: '0' }),
      f('is_active', 'bool', { default_value: 'true' }),
      f('tags', 'citext[]'),
    ], [
        dataSearch({
          embedding_source_fields: ['name', 'description'],
          chunks: true,
        }),
      ]),
  ],

  relations: [
    { $type: 'RelationHasMany', source_ref: 'trips',  target_ref: 'itinerary_items', delete_action: 'c' },
    { $type: 'RelationBelongsTo', source_ref: 'itinerary_items', target_ref: 'places', field_name: 'place_id', source_field_name: 'place_id', target_field_name: 'id', delete_action: 'n', is_required: false },

    { $type: 'RelationManyToMany', source_ref: 'trips', target_ref: 'places', junction_table_name: 'trip_places', source_field_name: 'trip_id', target_field_name: 'place_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'trips', target_ref: 'hiking_trails', junction_table_name: 'trip_hiking_trails', source_field_name: 'trip_id', target_field_name: 'hiking_trail_id', is_required: false, data: M2M_JUNCTION_OPTS },
    { $type: 'RelationManyToMany', source_ref: 'goals', target_ref: 'habits', junction_table_name: 'goal_habits', source_field_name: 'goal_id', target_field_name: 'habit_id', is_required: false, data: M2M_JUNCTION_OPTS },
  ],

  indexes: [
    ginIndex('trips', 'tags'),
    ginIndex('places', 'tags'),
    ginIndex('hiking_trails', 'tags'),
    ginIndex('memories', 'tags'),
    ginIndex('goals', 'tags'),
    ginIndex('habits', 'tags'),

    btreeIndex('trips', 'status'),
    btreeIndex('trips', 'started_at'),
    btreeIndex('places', 'city'),
    btreeIndex('places', 'country'),
    btreeIndex('places', 'category'),
    // btreeIndex('itinerary_items', 'trip_id'), — auto-created by FK (trips → itinerary_items)
    btreeIndex('itinerary_items', 'day_number'),
    // btreeIndex('itinerary_items', 'place_id'), — auto-created by FK (BelongsTo places)
    btreeIndex('hiking_trails', 'difficulty'),
    btreeIndex('hiking_trails', 'trail_type'),
    btreeIndex('hiking_trails', 'region'),
    btreeIndex('memories', 'occurred_at'),
    btreeIndex('memories', 'mood'),
    btreeIndex('goals', 'status'),
    btreeIndex('goals', 'category'),
    btreeIndex('goals', 'priority'),
    btreeIndex('habits', 'frequency'),
    btreeIndex('habits', 'is_active'),
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Life OS Schema');
}

export { main as default };
