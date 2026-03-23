-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".runtime_logs 
  DISABLE ROW LEVEL SECURITY;


