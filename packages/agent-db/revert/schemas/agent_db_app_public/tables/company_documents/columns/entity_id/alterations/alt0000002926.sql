-- Revert: schemas/agent_db_app_public/tables/company_documents/columns/entity_id/alterations/alt0000002926


ALTER TABLE "agent_db_app_public".company_documents 
  ALTER COLUMN entity_id DROP NOT NULL;


