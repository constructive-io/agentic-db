-- Revert: schemas/agentic_db_app_public/tables/calendar_accounts/columns/sync_token/column


ALTER TABLE "agentic_db_app_public".calendar_accounts 
  DROP COLUMN sync_token RESTRICT;


