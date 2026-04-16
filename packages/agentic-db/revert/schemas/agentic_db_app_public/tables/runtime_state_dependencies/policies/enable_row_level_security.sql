-- Revert: schemas/agentic_db_app_public/tables/runtime_state_dependencies/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.runtime_state_dependencies 
  DISABLE ROW LEVEL SECURITY;


