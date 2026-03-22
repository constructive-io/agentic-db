-- Revert: schemas/agentic_db_app_public/tables/code_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.code_chunks 
  DISABLE ROW LEVEL SECURITY;


