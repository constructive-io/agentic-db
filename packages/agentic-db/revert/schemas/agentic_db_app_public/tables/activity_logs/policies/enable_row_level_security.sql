-- Revert: schemas/agentic_db_app_public/tables/activity_logs/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".activity_logs 
  DISABLE ROW LEVEL SECURITY;


