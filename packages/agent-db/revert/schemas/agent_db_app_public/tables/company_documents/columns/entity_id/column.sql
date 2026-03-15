-- Revert: schemas/agent_db_app_public/tables/company_documents/columns/entity_id/column


ALTER TABLE "agent_db_app_public".company_documents 
  DROP COLUMN entity_id RESTRICT;


