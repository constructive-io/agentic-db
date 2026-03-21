-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.thread_chunks 
  DROP COLUMN updated_at RESTRICT;


