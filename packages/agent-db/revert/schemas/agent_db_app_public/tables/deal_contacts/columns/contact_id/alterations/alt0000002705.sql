-- Revert: schemas/agent_db_app_public/tables/deal_contacts/columns/contact_id/alterations/alt0000002705


ALTER TABLE "agent_db_app_public".deal_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


