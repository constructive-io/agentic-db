-- Revert: schemas/agentic_db_app_public/tables/lists/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.lists 
  DISABLE ROW LEVEL SECURITY;


