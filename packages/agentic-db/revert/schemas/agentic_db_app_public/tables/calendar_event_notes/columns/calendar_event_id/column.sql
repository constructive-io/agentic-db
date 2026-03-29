-- Revert: schemas/agentic_db_app_public/tables/calendar_event_notes/columns/calendar_event_id/column


ALTER TABLE agentic_db_app_public.calendar_event_notes 
  DROP COLUMN calendar_event_id RESTRICT;


