-- Deploy: schemas/agentic_db_app_public/tables/places/indexes/places_location_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/location/column
-- requires: schemas/agentic_db_app_public/tables/places/triggers/places_enqueue_embedding_update_tg


CREATE INDEX places_location_gist_idx ON "agentic_db_app_public".places USING GIST ( location );

