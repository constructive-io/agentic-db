-- Revert: schemas/agentic_db_app_public/tables/interactions/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.interactions 
  DISABLE ROW LEVEL SECURITY;


