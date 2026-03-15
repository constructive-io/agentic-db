-- Revert: schemas/agent_db_app_public/tables/contact_documents/columns/contact_id/alterations/alt0000002916


ALTER TABLE "agent_db_app_public".contact_documents 
  ALTER COLUMN contact_id DROP NOT NULL;


