-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/activity_log_id/column


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  DROP COLUMN activity_log_id RESTRICT;


