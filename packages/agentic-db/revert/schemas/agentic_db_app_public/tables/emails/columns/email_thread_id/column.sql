-- Revert: schemas/agentic_db_app_public/tables/emails/columns/email_thread_id/column


ALTER TABLE agentic_db_app_public.emails 
  DROP COLUMN email_thread_id RESTRICT;


