-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/destination_geo/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/columns/destination_geo/column


COMMENT ON COLUMN agentic_db_app_public.trips.destination_geo IS E'@spatialRelation nearbyVenues agentic_db_app_public.venues.location st_dwithin distance';

