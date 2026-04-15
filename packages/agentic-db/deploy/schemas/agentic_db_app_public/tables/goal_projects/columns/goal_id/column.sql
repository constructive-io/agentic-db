-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/columns/goal_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/indexes/goal_habits_habit_id_idx


ALTER TABLE agentic_db_app_public.goal_projects 
  ADD COLUMN goal_id uuid;

