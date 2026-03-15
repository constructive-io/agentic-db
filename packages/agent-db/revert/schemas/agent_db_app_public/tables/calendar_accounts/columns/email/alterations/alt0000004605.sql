-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/email/alterations/alt0000004605


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ALTER COLUMN email DROP NOT NULL;


