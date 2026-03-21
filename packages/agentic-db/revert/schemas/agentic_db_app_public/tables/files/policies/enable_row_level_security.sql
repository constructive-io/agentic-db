-- Revert: schemas/agentic_db_app_public/tables/files/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.files 
  DISABLE ROW LEVEL SECURITY;


