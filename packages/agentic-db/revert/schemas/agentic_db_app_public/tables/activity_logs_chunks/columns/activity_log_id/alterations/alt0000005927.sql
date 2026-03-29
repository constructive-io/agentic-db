-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/activity_log_id/alterations/alt0000005927


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN activity_log_id DROP NOT NULL;


