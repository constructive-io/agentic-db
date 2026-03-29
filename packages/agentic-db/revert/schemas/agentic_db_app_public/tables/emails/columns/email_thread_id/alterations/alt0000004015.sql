-- Revert: schemas/agentic_db_app_public/tables/emails/columns/email_thread_id/alterations/alt0000004015


ALTER TABLE agentic_db_app_public.emails 
  ALTER COLUMN email_thread_id DROP NOT NULL;


