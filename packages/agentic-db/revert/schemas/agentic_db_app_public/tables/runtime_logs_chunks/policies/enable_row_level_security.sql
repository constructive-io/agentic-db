-- Revert: schemas/agentic_db_app_public/tables/runtime_logs_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.runtime_logs_chunks 
  DISABLE ROW LEVEL SECURITY;


