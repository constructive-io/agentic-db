-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/contact_id/column


ALTER TABLE agentic_db_app_public.calendar_attendees 
  DROP COLUMN contact_id RESTRICT;


