-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/end_time/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN end_time RESTRICT;


