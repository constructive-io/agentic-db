-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/id/alterations/alt0000004291


ALTER TABLE agentic_db_app_public.thread_chunks 
  ALTER COLUMN id DROP NOT NULL;


