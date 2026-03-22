-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/location/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/triggers/trips_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".trips 
  ADD COLUMN location geography(Point,4326);

