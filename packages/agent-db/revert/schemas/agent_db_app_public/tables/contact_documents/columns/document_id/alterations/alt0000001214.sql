-- Revert: schemas/agent_db_app_public/tables/contact_documents/columns/document_id/alterations/alt0000001214


ALTER TABLE agent_db_app_public.contact_documents 
  ALTER COLUMN document_id DROP NOT NULL;


