-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  DISABLE ROW LEVEL SECURITY;


