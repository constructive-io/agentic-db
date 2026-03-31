-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/columns/chunk_index/alterations/alt0000003385


ALTER TABLE agentic_db_app_public.tasks_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


