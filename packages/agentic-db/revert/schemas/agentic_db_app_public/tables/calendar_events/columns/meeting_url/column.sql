-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/meeting_url/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  DROP COLUMN meeting_url RESTRICT;


