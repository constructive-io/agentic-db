-- Revert: schemas/agentic_db_app_public/tables/goal_habits/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".goal_habits 
  DISABLE ROW LEVEL SECURITY;


