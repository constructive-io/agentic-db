-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/thread_id/column


ALTER TABLE agentic_db_app_public.thread_chunks 
  DROP COLUMN thread_id RESTRICT;


