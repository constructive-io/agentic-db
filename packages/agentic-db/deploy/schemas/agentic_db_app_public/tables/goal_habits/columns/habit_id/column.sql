-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/columns/habit_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table


ALTER TABLE agentic_db_app_public.goal_habits 
  ADD COLUMN habit_id uuid;

