-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/columns/habit_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_goal_id_idx


ALTER TABLE agentic_db_app_public.habit_chunks 
  ADD COLUMN habit_id uuid;

