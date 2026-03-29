-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/id/alterations/alt0000003998


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ALTER COLUMN id DROP NOT NULL;


