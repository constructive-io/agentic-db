-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/created_at/alterations/alt0000004601


ALTER TABLE "agent_db_app_public".calendar_accounts 
  ALTER COLUMN created_at DROP NOT NULL;


