-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/id/alterations/alt0000003829


ALTER TABLE agentic_db_app_public.activity_logs_chunks 
  ALTER COLUMN id DROP NOT NULL;


