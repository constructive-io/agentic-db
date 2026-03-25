-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/content/alterations/alt0000001777


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN content DROP NOT NULL;


