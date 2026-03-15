-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/last_synced_at/column


ALTER TABLE agent_db_app_public.calendar_sync 
  DROP COLUMN last_synced_at RESTRICT;


