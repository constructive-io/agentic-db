-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_logs_id/alterations/alt0000001680


ALTER TABLE "agentic_db_app_public".activity_logs_chunks 
  ALTER COLUMN activity_logs_id DROP NOT NULL;


