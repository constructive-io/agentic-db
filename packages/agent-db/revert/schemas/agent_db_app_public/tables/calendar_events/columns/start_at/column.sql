-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/start_at/column


ALTER TABLE agent_db_app_public.calendar_events 
  DROP COLUMN start_at RESTRICT;


