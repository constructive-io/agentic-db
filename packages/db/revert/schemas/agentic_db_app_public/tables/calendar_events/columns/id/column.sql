-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/id/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  DROP COLUMN id RESTRICT;


