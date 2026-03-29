-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/start_time/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN start_time RESTRICT;


