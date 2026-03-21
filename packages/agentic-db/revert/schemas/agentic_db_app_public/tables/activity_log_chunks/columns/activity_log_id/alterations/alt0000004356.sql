-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/activity_log_id/alterations/alt0000004356


ALTER TABLE agentic_db_app_public.activity_log_chunks 
  ALTER COLUMN activity_log_id DROP NOT NULL;


