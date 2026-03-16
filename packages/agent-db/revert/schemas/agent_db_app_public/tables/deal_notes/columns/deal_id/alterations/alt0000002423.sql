-- Revert: schemas/agent_db_app_public/tables/deal_notes/columns/deal_id/alterations/alt0000002423


ALTER TABLE "agent_db_app_public".deal_notes 
  ALTER COLUMN deal_id DROP NOT NULL;


