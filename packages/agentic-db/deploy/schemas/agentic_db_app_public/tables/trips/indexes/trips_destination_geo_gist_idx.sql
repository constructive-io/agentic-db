-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_destination_geo_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/destination_geo/column
-- requires: schemas/agentic_db_app_public/tables/calendar_events/indexes/calendar_events_location_geo_gist_idx


CREATE INDEX trips_destination_geo_gist_idx ON agentic_db_app_public.trips USING GIST ( destination_geo );

