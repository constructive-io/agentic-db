-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.interactions_chunks 
  DISABLE ROW LEVEL SECURITY;


