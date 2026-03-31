-- Revert: schemas/agentic_db_app_public/tables/projects/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.projects 
  DISABLE ROW LEVEL SECURITY;


