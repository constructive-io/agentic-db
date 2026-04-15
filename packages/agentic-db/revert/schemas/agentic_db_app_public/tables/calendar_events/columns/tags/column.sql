-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/tags/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN tags RESTRICT;


