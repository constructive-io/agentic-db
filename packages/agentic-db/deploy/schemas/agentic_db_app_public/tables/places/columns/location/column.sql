-- Deploy: schemas/agentic_db_app_public/tables/places/columns/location/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/triggers/places_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.places 
  ADD COLUMN location geography(Point,4326);

