-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.memories_chunks 
  DROP COLUMN chunk_index RESTRICT;


