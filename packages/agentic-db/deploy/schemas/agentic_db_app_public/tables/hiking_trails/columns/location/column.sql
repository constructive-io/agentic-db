-- Deploy: schemas/agentic_db_app_public/tables/hiking_trails/columns/location/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/triggers/hiking_trails_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.hiking_trails 
  ADD COLUMN location geography(Point,4326);

