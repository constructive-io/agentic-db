-- Revert: schemas/agent_db_app_public/tables/contact_documents/columns/id/alterations/alt0000001215


ALTER TABLE agent_db_app_public.contact_documents 
  ALTER COLUMN id DROP NOT NULL;


