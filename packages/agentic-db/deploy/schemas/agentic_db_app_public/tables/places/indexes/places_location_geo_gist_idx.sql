-- Deploy: schemas/agentic_db_app_public/tables/places/indexes/places_location_geo_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/location_geo/column


CREATE INDEX places_location_geo_gist_idx ON agentic_db_app_public.places USING GIST ( location_geo );

