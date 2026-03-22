-- Deploy: schemas/agentic_db_app_public/tables/trip_places/columns/id/alterations/alt0000006403
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/trip_places/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_habit_id_idx



ALTER TABLE agentic_db_app_public.trip_places 
    ALTER COLUMN id SET DEFAULT uuidv7();

