-- Revert: schemas/agentic_db_app_public/tables/runtime_config/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.runtime_config 
  DISABLE ROW LEVEL SECURITY;


