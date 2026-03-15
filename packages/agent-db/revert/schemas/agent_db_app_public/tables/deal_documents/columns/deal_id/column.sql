-- Revert: schemas/agent_db_app_public/tables/deal_documents/columns/deal_id/column


ALTER TABLE "agent_db_app_public".deal_documents 
  DROP COLUMN deal_id RESTRICT;


