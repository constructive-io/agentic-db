-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  DROP COLUMN updated_at RESTRICT;


