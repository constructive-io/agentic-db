-- Revert: schemas/agent_db_app_public/tables/deal_contacts/columns/id/alterations/alt0000002706


ALTER TABLE "agent_db_app_public".deal_contacts 
  ALTER COLUMN id DROP NOT NULL;


