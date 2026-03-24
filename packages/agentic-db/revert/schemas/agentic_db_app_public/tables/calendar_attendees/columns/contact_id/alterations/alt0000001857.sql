-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/contact_id/alterations/alt0000001857


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  ALTER COLUMN contact_id DROP NOT NULL;


