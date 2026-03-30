-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/id/alterations/alt0000001823


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  ALTER COLUMN id DROP NOT NULL;


