-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/chunk_index/alterations/alt0000011156


ALTER TABLE agentic_db_app_public.memories_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


