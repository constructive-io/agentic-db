-- Revert: schemas/agentic_db_app_public/tables/documents/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.documents 
  DISABLE ROW LEVEL SECURITY;


