-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/created_at/alterations/alt0000001166


ALTER TABLE agent_db_app_public.calendar_sync 
  ALTER COLUMN created_at DROP NOT NULL;


