-- Revert: schemas/agentic_db_app_public/tables/prompts/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.prompts 
  DISABLE ROW LEVEL SECURITY;


