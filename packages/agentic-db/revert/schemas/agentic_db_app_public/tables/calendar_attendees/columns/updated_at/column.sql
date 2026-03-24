-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  DROP COLUMN updated_at RESTRICT;


