-- Deploy: schemas/agentic_db_app_public/tables/events/columns/location_geo/alterations/alt0000001433
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/columns/location_geo/column
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000001431


COMMENT ON COLUMN agentic_db_app_public.events.location_geo IS E'@spatialRelation nearbyVenues agentic_db_app_public.venues.location st_dwithin distance';

