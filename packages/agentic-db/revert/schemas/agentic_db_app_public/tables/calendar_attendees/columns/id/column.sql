-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/id/column


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  DROP COLUMN id RESTRICT;


