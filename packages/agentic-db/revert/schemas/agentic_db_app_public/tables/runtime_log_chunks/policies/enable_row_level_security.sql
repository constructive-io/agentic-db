-- Revert: schemas/agentic_db_app_public/tables/runtime_log_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.runtime_log_chunks 
  DISABLE ROW LEVEL SECURITY;


