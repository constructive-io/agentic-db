-- Revert: schemas/agentic_db_app_public/tables/repository_chunks/columns/chunk_index/alterations/alt0000004423


ALTER TABLE agentic_db_app_public.repository_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


