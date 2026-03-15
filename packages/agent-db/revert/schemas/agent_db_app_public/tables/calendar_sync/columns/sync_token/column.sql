-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/sync_token/column


ALTER TABLE agent_db_app_public.calendar_sync 
  DROP COLUMN sync_token RESTRICT;


