-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/created_at/column


ALTER TABLE "agent_db_app_public".calendar_sync 
  DROP COLUMN created_at RESTRICT;


