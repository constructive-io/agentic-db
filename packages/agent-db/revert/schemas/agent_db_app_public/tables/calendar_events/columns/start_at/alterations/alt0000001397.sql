-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/start_at/alterations/alt0000001397


ALTER TABLE agent_db_app_public.calendar_events 
  ALTER COLUMN start_at DROP NOT NULL;


