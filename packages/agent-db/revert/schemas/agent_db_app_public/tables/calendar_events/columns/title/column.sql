-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/title/column


ALTER TABLE "agent_db_app_public".calendar_events 
  DROP COLUMN title RESTRICT;


