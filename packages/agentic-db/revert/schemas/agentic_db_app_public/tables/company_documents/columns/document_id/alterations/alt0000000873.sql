-- Revert: schemas/agentic_db_app_public/tables/company_documents/columns/document_id/alterations/alt0000000873


ALTER TABLE agentic_db_app_public.company_documents 
  ALTER COLUMN document_id DROP NOT NULL;


