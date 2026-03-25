-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/calendar_event_id/alterations/alt0000001876


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  ALTER COLUMN calendar_event_id DROP NOT NULL;


