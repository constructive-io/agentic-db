-- Revert: schemas/agentic_db_app_public/tables/project_documents/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.project_documents 
  DISABLE ROW LEVEL SECURITY;


