-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/constraints/email_threads_chunks_email_thread_id_fkey/constraint


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  DROP CONSTRAINT email_threads_chunks_email_thread_id_fkey;


