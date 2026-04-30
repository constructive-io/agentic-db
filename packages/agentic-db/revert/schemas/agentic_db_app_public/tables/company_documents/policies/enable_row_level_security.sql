-- Revert: schemas/agentic_db_app_public/tables/company_documents/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.company_documents 
  DISABLE ROW LEVEL SECURITY;


