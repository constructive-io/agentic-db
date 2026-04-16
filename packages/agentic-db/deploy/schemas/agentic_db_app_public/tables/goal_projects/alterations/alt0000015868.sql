-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/alterations/alt0000015868
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/indexes/goal_habits_habit_id_idx


ALTER TABLE agentic_db_app_public.goal_projects 
  DISABLE ROW LEVEL SECURITY;

