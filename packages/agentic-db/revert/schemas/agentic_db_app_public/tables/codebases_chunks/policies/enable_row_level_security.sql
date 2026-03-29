-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.codebases_chunks 
  DISABLE ROW LEVEL SECURITY;


