-- Revert: schemas/agentic_db_app_public/tables/activity_logs/columns/duration_minutes/column


ALTER TABLE "agentic_db_app_public".activity_logs 
  DROP COLUMN duration_minutes RESTRICT;


