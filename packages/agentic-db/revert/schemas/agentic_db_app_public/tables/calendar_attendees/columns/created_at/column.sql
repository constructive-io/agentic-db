-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/created_at/column


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  DROP COLUMN created_at RESTRICT;


