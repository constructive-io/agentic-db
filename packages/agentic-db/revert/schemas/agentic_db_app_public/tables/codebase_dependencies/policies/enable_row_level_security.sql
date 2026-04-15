-- Revert: schemas/agentic_db_app_public/tables/codebase_dependencies/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.codebase_dependencies 
  DISABLE ROW LEVEL SECURITY;


