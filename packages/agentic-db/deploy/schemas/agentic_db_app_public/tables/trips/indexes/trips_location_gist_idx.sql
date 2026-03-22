-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_location_gist_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/location/column
-- requires: schemas/agentic_db_app_public/tables/trips/triggers/trips_enqueue_embedding_update_tg


CREATE INDEX trips_location_gist_idx ON "agentic_db_app_public".trips USING GIST ( location );

