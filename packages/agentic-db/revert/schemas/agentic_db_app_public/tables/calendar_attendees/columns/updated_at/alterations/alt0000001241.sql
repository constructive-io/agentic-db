-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/updated_at/alterations/alt0000001241


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ALTER COLUMN updated_at DROP NOT NULL;


