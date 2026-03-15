-- Revert: schemas/agent_db_app_public/tables/deal_contacts/columns/deal_id/alterations/alt0000002704


ALTER TABLE "agent_db_app_public".deal_contacts 
  ALTER COLUMN deal_id DROP NOT NULL;


