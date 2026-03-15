-- Revert: schemas/agent_db_app_public/tables/deal_documents/columns/deal_id/alterations/alt0000002928


ALTER TABLE "agent_db_app_public".deal_documents 
  ALTER COLUMN deal_id DROP NOT NULL;


