-- Revert: schemas/agentic_db_app_public/tables/company_documents/columns/document_id/column


ALTER TABLE agentic_db_app_public.company_documents 
  DROP COLUMN document_id RESTRICT;


