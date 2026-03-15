-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/embedding/column


ALTER TABLE "agent_db_app_public".calendar_events 
  DROP COLUMN embedding RESTRICT;


