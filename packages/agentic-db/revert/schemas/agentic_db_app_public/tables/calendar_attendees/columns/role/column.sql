-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/role/column


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  DROP COLUMN role RESTRICT;


