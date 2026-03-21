-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/columns/provider/column


ALTER TABLE "agentic_db_app_public".calendar_accounts 
  DROP COLUMN provider RESTRICT;


