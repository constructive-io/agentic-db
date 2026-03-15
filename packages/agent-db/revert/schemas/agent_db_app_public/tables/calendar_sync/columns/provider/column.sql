-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/provider/column


ALTER TABLE agent_db_app_public.calendar_sync 
  DROP COLUMN provider RESTRICT;


