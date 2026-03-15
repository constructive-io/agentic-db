-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/updated_at/column


ALTER TABLE "agent_db_app_public".calendar_sync 
  DROP COLUMN updated_at RESTRICT;


