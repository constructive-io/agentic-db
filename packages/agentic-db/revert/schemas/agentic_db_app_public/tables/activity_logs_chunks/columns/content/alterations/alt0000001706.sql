-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/columns/content/alterations/alt0000001706


ALTER TABLE "agentic_db_app_public".activity_logs_chunks 
  ALTER COLUMN content DROP NOT NULL;


