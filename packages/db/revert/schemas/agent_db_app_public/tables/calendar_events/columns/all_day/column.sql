-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/all_day/column


ALTER TABLE "agent_db_app_public".calendar_events 
  DROP COLUMN all_day RESTRICT;


