-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_thread_id/column


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  DROP COLUMN email_thread_id RESTRICT;


