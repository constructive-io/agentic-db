-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/columns/email/alterations/alt0000002465


ALTER TABLE "agentic_db_app_public".calendar_accounts 
  ALTER COLUMN email DROP NOT NULL;


