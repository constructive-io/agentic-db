-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/remote_id/column


ALTER TABLE "agent_db_app_public".calendar_events 
  DROP COLUMN remote_id RESTRICT;


