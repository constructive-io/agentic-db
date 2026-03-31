-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/updated_at/alterations/alt0000003837


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


