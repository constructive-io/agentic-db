-- Revert: schemas/agentic_db_app_public/tables/rules/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.rules 
  DISABLE ROW LEVEL SECURITY;


