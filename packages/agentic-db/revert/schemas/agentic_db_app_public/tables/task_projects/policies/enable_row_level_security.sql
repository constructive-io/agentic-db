-- Revert: schemas/agentic_db_app_public/tables/task_projects/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".task_projects 
  DISABLE ROW LEVEL SECURITY;


