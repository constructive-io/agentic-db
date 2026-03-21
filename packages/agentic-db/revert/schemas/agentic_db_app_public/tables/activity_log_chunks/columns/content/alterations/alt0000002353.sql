-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/columns/content/alterations/alt0000002353


ALTER TABLE "agentic_db_app_public".activity_log_chunks 
  ALTER COLUMN content DROP NOT NULL;


