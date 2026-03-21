-- Revert: schemas/agentic_db_app_public/tables/repositories/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.repositories 
  DISABLE ROW LEVEL SECURITY;


