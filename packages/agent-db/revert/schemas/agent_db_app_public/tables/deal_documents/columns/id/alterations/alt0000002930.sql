-- Revert: schemas/agent_db_app_public/tables/deal_documents/columns/id/alterations/alt0000002930


ALTER TABLE "agent_db_app_public".deal_documents 
  ALTER COLUMN id DROP NOT NULL;


