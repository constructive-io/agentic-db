-- Revert: schemas/agent_db_app_public/tables/deal_documents/columns/entity_id/column


ALTER TABLE "agent_db_app_public".deal_documents 
  DROP COLUMN entity_id RESTRICT;


