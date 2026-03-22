-- Deploy: schemas/agentic_db_app_public/tables/trip_hiking_trails/columns/hiking_trail_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_hiking_trails/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  ADD COLUMN hiking_trail_id uuid;

