-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_threads_id/alterations/alt0000001800


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN email_threads_id DROP NOT NULL;


