-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/email_thread_id/alterations/alt0000006224


ALTER TABLE agentic_db_app_public.thread_participants 
  ALTER COLUMN email_thread_id DROP NOT NULL;


