-- Revert: schemas/agent_db_app_public/tables/contact_documents/columns/entity_id/alterations/alt0000002920


ALTER TABLE "agent_db_app_public".contact_documents 
  ALTER COLUMN entity_id DROP NOT NULL;


