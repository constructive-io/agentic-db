-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/columns/email_thread_id/alterations/alt0000006044


ALTER TABLE agentic_db_app_public.email_threads_chunks 
  ALTER COLUMN email_thread_id DROP NOT NULL;


