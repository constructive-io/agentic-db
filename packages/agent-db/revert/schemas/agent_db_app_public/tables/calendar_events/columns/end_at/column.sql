-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/end_at/column


ALTER TABLE agent_db_app_public.calendar_events 
  DROP COLUMN end_at RESTRICT;


