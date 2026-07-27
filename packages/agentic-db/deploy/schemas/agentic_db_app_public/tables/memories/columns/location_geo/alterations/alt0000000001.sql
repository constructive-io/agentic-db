-- Deploy: schemas/agentic_db_app_public/tables/memories/columns/location_geo/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories/columns/location_geo/column


COMMENT ON COLUMN agentic_db_app_public.memories.location_geo IS E'@spatialRelation nearbyPlaces agentic_db_app_public.places.location_geo st_dwithin distance';

