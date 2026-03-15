-- Revert: schemas/agent_db_app_public/tables/calendar_accounts/columns/sync_token/column


ALTER TABLE agent_db_app_public.calendar_accounts 
  DROP COLUMN sync_token RESTRICT;


