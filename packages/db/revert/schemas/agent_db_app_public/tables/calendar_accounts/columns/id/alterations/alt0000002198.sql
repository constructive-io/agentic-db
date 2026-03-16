-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/id/alterations/alt0000002198


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ALTER COLUMN id DROP NOT NULL;


