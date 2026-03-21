-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.prompt_chunks 
  DISABLE ROW LEVEL SECURITY;


