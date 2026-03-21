-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  DISABLE ROW LEVEL SECURITY;


