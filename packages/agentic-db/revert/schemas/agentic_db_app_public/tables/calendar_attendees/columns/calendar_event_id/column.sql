-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/calendar_event_id/column


ALTER TABLE agentic_db_app_public.calendar_attendees 
  DROP COLUMN calendar_event_id RESTRICT;


