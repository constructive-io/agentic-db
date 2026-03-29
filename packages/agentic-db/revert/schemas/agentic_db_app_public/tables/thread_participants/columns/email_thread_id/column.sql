-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/email_thread_id/column


ALTER TABLE agentic_db_app_public.thread_participants 
  DROP COLUMN email_thread_id RESTRICT;


