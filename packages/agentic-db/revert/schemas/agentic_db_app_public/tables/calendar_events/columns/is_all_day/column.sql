-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/is_all_day/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  DROP COLUMN is_all_day RESTRICT;


