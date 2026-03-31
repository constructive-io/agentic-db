-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/created_at/alterations/alt0000001835


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


