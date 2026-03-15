-- Revert: schemas/agent_db_app_public/tables/deal_documents/columns/entity_id/alterations/alt0000002932


ALTER TABLE "agent_db_app_public".deal_documents 
  ALTER COLUMN entity_id DROP NOT NULL;


