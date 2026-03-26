-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".activity_logs_chunks 
  DISABLE ROW LEVEL SECURITY;


