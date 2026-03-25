/**
 * life_os.ts — Life-OS domain schema (blueprint definition)
 *
 * Tables: goals, habits, memories, trips, hiking_trails, places
 * (projects lives in projects.ts; expenses lives in agent.ts)
 * Data* nodes: DataSearch, DataPostGIS
 */

import {
  type BlueprintDefinition,
  ORG_NODES,
  ORG_POLICY,
  CRUD_GRANTS,
  provisionBlueprint,
} from '../blueprint';

const definition: BlueprintDefinition = {
  tables: [
    // -- Goals --------------------------------------------------------------
    {
      ref: 'goals',
      table_name: 'goals',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['title', 'description'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
      ],
      fields: [
        { name: 'title', type: 'text', is_required: true },
        { name: 'description', type: 'text' },
        { name: 'status', type: 'text', default_value: "'active'" },
        { name: 'target_date', type: 'timestamptz' },
        { name: 'progress', type: 'numeric', default_value: '0' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Habits -------------------------------------------------------------
    {
      ref: 'habits',
      table_name: 'habits',
      nodes: [...ORG_NODES],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'frequency', type: 'text', default_value: "'daily'" },
        { name: 'streak', type: 'int', default_value: '0' },
        { name: 'last_completed_at', type: 'timestamptz' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Memories -----------------------------------------------------------
    {
      ref: 'memories',
      table_name: 'memories',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['title', 'content', 'location'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
        { $type: 'DataPostGIS', data: { field_name: 'location_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'title', type: 'text', is_required: true },
        { name: 'content', type: 'text' },
        { name: 'location', type: 'text' },
        { name: 'occurred_at', type: 'timestamptz' },
        { name: 'mood', type: 'text' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Trips --------------------------------------------------------------
    {
      ref: 'trips',
      table_name: 'trips',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description', 'destination'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
        { $type: 'DataPostGIS', data: { field_name: 'destination_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'destination', type: 'text' },
        { name: 'description', type: 'text' },
        { name: 'start_date', type: 'timestamptz' },
        { name: 'end_date', type: 'timestamptz' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Hiking Trails ------------------------------------------------------
    {
      ref: 'hiking_trails',
      table_name: 'hiking_trails',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description', 'location'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
        { $type: 'DataPostGIS', data: { field_name: 'trailhead_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'location', type: 'text' },
        { name: 'description', type: 'text' },
        { name: 'difficulty', type: 'text' },
        { name: 'distance_km', type: 'numeric' },
        { name: 'elevation_gain_m', type: 'numeric' },
        { name: 'rating', type: 'numeric' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },

    // -- Places -------------------------------------------------------------
    {
      ref: 'places',
      table_name: 'places',
      nodes: [
        ...ORG_NODES,
        { $type: 'DataSearch', data: {
          embedding: { source_fields: ['name', 'description', 'address'], chunks: {} },
          bm25: { field_name: 'embedding_text' },
        }},
        { $type: 'DataPostGIS', data: { field_name: 'location_geo', use_geography: true, geometry_type: 'Point', srid: 4326 } },
      ],
      fields: [
        { name: 'name', type: 'text', is_required: true },
        { name: 'address', type: 'text' },
        { name: 'description', type: 'text' },
        { name: 'category', type: 'text' },
        { name: 'rating', type: 'numeric' },
        { name: 'tags', type: 'citext[]' },
      ],
      grant_roles: ['authenticated'],
      grants: CRUD_GRANTS,
      policies: [ORG_POLICY],
    },
  ],

  relations: [
    // HasMany: goals -> habits (via goal_habits junction is in cross-relations)
    // trips -> expenses FK handled in cross-relations.ts (expenses lives in agent.ts)
  ],

  indexes: [
    // projects indexes live in projects.ts
    { table_ref: 'goals', column: 'tags', access_method: 'gin' },
    { table_ref: 'habits', column: 'tags', access_method: 'gin' },
    { table_ref: 'memories', column: 'tags', access_method: 'gin' },
    // expenses indexes live in agent.ts
    { table_ref: 'trips', column: 'tags', access_method: 'gin' },
    { table_ref: 'hiking_trails', column: 'tags', access_method: 'gin' },
    { table_ref: 'places', column: 'tags', access_method: 'gin' },

    { table_ref: 'goals', column: 'status', access_method: 'btree' },
    { table_ref: 'goals', column: 'target_date', access_method: 'btree' },
    { table_ref: 'habits', column: 'frequency', access_method: 'btree' },
    { table_ref: 'memories', column: 'occurred_at', access_method: 'btree' },
    { table_ref: 'trips', column: 'start_date', access_method: 'btree' },
    { table_ref: 'hiking_trails', column: 'difficulty', access_method: 'btree' },
    { table_ref: 'places', column: 'category', access_method: 'btree' },
  ],
};

async function main() {
  await provisionBlueprint(definition, 'Life-OS Schema');
}

export { main as default };
