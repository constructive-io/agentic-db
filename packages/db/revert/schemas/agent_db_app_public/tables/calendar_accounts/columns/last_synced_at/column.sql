-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/last_synced_at/column


ALTER TABLE "agent_db_app_public".calendar_accounts 
  DROP COLUMN last_synced_at RESTRICT;


