-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/updated_at/alterations/alt0000001831


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


