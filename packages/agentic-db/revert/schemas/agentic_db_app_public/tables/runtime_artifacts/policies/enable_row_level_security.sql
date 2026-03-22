-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.runtime_artifacts 
  DISABLE ROW LEVEL SECURITY;


