-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/created_at/alterations/alt0000013533


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ALTER COLUMN created_at DROP NOT NULL;


