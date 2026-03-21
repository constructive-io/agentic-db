-- Revert: schemas/agentic_db_app_public/tables/goal_projects/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".goal_projects 
  DISABLE ROW LEVEL SECURITY;


