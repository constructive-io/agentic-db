-- Revert: schemas/agentic_db_app_public/tables/email_threads/columns/provider_thread_id/column


ALTER TABLE "agentic_db_app_public".email_threads 
  DROP COLUMN provider_thread_id RESTRICT;


