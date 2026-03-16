-- Revert: schemas/agentic_db_app_public/tables/email_accounts/columns/sync_state/column


ALTER TABLE "agentic_db_app_public".email_accounts 
  DROP COLUMN sync_state RESTRICT;


