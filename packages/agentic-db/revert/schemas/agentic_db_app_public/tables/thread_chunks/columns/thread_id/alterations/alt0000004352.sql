-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/thread_id/alterations/alt0000004352


ALTER TABLE agentic_db_app_public.thread_chunks 
  ALTER COLUMN thread_id DROP NOT NULL;


