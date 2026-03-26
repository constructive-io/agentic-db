-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_logs_id/column


ALTER TABLE "agentic_db_app_public".activity_logs_chunks 
  DROP COLUMN activity_logs_id RESTRICT;


