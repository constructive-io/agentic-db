-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/id/alterations/alt0000001163


ALTER TABLE agent_db_app_public.calendar_sync 
  ALTER COLUMN id DROP NOT NULL;


