-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.messages_chunks 
  DROP COLUMN chunk_index RESTRICT;


