/**
 * spatial-relations.ts — Cross-table PostGIS spatial relations
 *
 * Declares 5 @spatialRelation virtual relations across the agentic-db schema
 * using the blueprint SDK (same declarative path as every other schema here).
 *
 * Each entry lands as a metaschema_public.spatial_relation row; the
 * sync_spatial_relation_tags trigger then projects a @spatialRelation smart
 * tag onto the owner column so graphile-postgis' PostgisSpatialRelationsPlugin
 * exposes it as a cross-table filter in the GraphQL `where:` input — no FK
 * required, no GeoJSON on the wire.
 *
 * Generated ORM shape:
 *   orm.memory.findMany({
 *     where: { nearbyPlaces: { some: { name: { equalTo: 'Bay Area' } } } },
 *   });
 *
 * All 5 entries use `st_dwithin` because every agentic-db geom column is a
 * Point. Radii (in metres since columns are geography) match the query intent:
 *
 *   1. memories  → places   @ 5 km    "memories within 5 km of a known place"
 *   2. memories  → contacts @ 2 km    "memories logged near where a contact lives"
 *   3. trips     → venues   @ 1 km    "trips whose destination is near a venue"
 *   4. events    → venues   @ 500 m   "events near a specific venue (no FK)"
 *   5. memories  → memories @ 1 km    "what else happened near this memory" (self)
 *
 * Must run AFTER all domain schemas — source and target tables/columns must
 * already exist on the database.
 */

import {
  type BlueprintDefinition,
  type BlueprintRelation,
  provisionBlueprint,
} from '../blueprint';

const SCHEMA_NAME = 'app_public';

/**
 * 5 RelationSpatial entries typed directly against the generated
 * BlueprintRelation union (node-type-registry ≥ 0.16.0 exposes
 * source_field/target_field on the RelationSpatial arm). Column names are
 * resolved server-side by resolve_blueprint_field.
 */
const entries: BlueprintRelation[] = [
  {
    $type: 'RelationSpatial',
    source_table: 'memories',
    source_schema_name: SCHEMA_NAME,
    target_table: 'places',
    target_schema_name: SCHEMA_NAME,
    source_field: 'location_geo',
    target_field: 'location_geo',
    name: 'nearbyPlaces',
    operator: 'st_dwithin',
    param_name: 'distance',
  },
  {
    $type: 'RelationSpatial',
    source_table: 'memories',
    source_schema_name: SCHEMA_NAME,
    target_table: 'contacts',
    target_schema_name: SCHEMA_NAME,
    source_field: 'location_geo',
    target_field: 'location_geo',
    name: 'nearbyContacts',
    operator: 'st_dwithin',
    param_name: 'distance',
  },
  {
    $type: 'RelationSpatial',
    source_table: 'trips',
    source_schema_name: SCHEMA_NAME,
    target_table: 'venues',
    target_schema_name: SCHEMA_NAME,
    source_field: 'destination_geo',
    target_field: 'location',
    name: 'nearbyVenues',
    operator: 'st_dwithin',
    param_name: 'distance',
  },
  {
    $type: 'RelationSpatial',
    source_table: 'events',
    source_schema_name: SCHEMA_NAME,
    target_table: 'venues',
    target_schema_name: SCHEMA_NAME,
    source_field: 'location_geo',
    target_field: 'location',
    name: 'nearbyVenues',
    operator: 'st_dwithin',
    param_name: 'distance',
  },
  {
    $type: 'RelationSpatial',
    source_table: 'memories',
    source_schema_name: SCHEMA_NAME,
    target_table: 'memories',
    target_schema_name: SCHEMA_NAME,
    source_field: 'location_geo',
    target_field: 'location_geo',
    name: 'nearbyMemories',
    operator: 'st_dwithin',
    param_name: 'distance',
  },
];

const definition: BlueprintDefinition = {
  // No new tables — we reference already-provisioned app_public tables by name.
  tables: [],
  // Cast-to-BlueprintRelation: the generated union type carries *_id props
  // (server-resolved UUIDs), but the blueprint JSON shape accepts field names
  // which construct_blueprint resolves via resolve_blueprint_field.
  relations: entries as unknown as BlueprintRelation[],
};

async function main() {
  await provisionBlueprint(definition, 'Spatial Relations');
}

export { main as default };
