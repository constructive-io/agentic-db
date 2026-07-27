-- Deploy: schemas/agentic_db_app_public/tables/events/indexes/events_location_geo_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/location_geo/column


CREATE INDEX events_location_geo_gist_idx ON agentic_db_app_public.events USING GIST ( location_geo );

