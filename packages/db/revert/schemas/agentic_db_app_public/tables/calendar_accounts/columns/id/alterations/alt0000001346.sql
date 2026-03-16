-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/columns/id/alterations/alt0000001346


ALTER TABLE "agentic_db_app_public".calendar_accounts 
  ALTER COLUMN id DROP NOT NULL;


