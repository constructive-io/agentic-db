-- Revert: schemas/agent_db_app_public/tables/company_documents/columns/document_id/alterations/alt0000001220


ALTER TABLE agent_db_app_public.company_documents 
  ALTER COLUMN document_id DROP NOT NULL;


