-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.projects_chunks 
  DISABLE ROW LEVEL SECURITY;


