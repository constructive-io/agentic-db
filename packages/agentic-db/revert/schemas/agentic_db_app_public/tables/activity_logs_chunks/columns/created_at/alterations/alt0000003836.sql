-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/created_at/alterations/alt0000003836


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


