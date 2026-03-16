-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/duration_minutes/column


ALTER TABLE "agent_db_app_public".activity_log 
  DROP COLUMN duration_minutes RESTRICT;


