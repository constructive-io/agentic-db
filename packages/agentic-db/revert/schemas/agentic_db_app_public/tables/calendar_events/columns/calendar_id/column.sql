-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/calendar_id/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN calendar_id RESTRICT;


