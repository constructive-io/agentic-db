-- Revert: schemas/agent_db_app_public/tables/deal_documents/columns/document_id/alterations/alt0000001226


ALTER TABLE agent_db_app_public.deal_documents 
  ALTER COLUMN document_id DROP NOT NULL;


