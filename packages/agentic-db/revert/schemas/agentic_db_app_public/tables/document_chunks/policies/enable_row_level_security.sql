-- Revert: schemas/agentic_db_app_public/tables/document_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.document_chunks 
  DISABLE ROW LEVEL SECURITY;


