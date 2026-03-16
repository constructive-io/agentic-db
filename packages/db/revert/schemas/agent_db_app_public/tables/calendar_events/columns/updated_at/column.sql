-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/updated_at/column


ALTER TABLE "agent_db_app_public".calendar_events 
  DROP COLUMN updated_at RESTRICT;


