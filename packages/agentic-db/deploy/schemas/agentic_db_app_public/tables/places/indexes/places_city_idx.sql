-- Deploy: schemas/agentic_db_app_public/tables/places/indexes/places_city_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/city/column
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_started_at_idx


CREATE INDEX places_city_idx ON agentic_db_app_public.places USING BTREE ( city );

