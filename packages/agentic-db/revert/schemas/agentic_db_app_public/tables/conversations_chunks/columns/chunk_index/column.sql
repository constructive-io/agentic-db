-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.conversations_chunks 
  DROP COLUMN chunk_index RESTRICT;


