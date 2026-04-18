-- spatial-relations.sql — Bakes @spatialRelation smart tags into column
-- comments so the graphile-postgis PostgisSpatialRelationsPlugin can
-- register cross-table spatial filters on the owner tables.
--
-- These comments match the metadata that would be emitted by
-- `metaschema_modules_public.provision_spatial_relation` running at
-- blueprint-construction time (see packages/provision/src/schemas/
-- spatial-relations.ts for the production path). We set them directly
-- here so ORM integration tests can exercise the GraphQL filter shape
-- without requiring a live Constructive platform to run the blueprint.
--
-- Tag format (parsed by graphile-postgis):
--   @spatialRelation <name> <target_table.col> <operator> [<param>]
--
-- Five entries, one per pair:
--   1. memories.location_geo  -> places.location_geo    (nearbyPlaces,   st_dwithin 5 km)
--   2. memories.location_geo  -> contacts.location_geo  (nearbyContacts, st_dwithin 2 km)
--   3. trips.destination_geo  -> venues.location        (nearbyVenues,   st_dwithin 1 km)
--   4. events.location_geo    -> venues.location        (nearbyVenues,   st_dwithin 500 m)
--   5. memories.location_geo  -> memories.location_geo  (nearbyMemories, st_dwithin 1 km, self)
--
-- Relation names are camelCase so the generated GraphQL filter fields
-- match PostGraphile's inflection for every other field in the schema.
-- Note: a column can carry multiple @spatialRelation tags — one per line.
-- The smart-tag parser reads repeated-key values as an array.

COMMENT ON COLUMN agentic_db_app_public.memories.location_geo IS
  E'@spatialRelation nearbyPlaces places.location_geo st_dwithin distance\n'
  '@spatialRelation nearbyContacts contacts.location_geo st_dwithin distance\n'
  '@spatialRelation nearbyMemories memories.location_geo st_dwithin distance';

COMMENT ON COLUMN agentic_db_app_public.trips.destination_geo IS
  E'@spatialRelation nearbyVenues venues.location st_dwithin distance';

COMMENT ON COLUMN agentic_db_app_public.events.location_geo IS
  E'@spatialRelation nearbyVenues venues.location st_dwithin distance';
