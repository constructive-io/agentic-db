-- Deploy: schemas/agentic_db_app_public/tables/goal_projects/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_projects/table
-- requires: schemas/agentic_db_app_public/tables/goal_habits/indexes/goal_habits_habit_id_idx


ALTER TABLE agentic_db_app_public.goal_projects 
  ENABLE ROW LEVEL SECURITY;

