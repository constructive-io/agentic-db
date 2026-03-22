-- Deploy: schemas/agentic_db_app_public/tables/trip_places/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_habit_id_idx


ALTER TABLE agentic_db_app_public.trip_places 
  ADD COLUMN entity_id uuid;

