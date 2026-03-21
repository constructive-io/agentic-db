-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/chunk_index/alterations/alt0000004278


ALTER TABLE agentic_db_app_public.chat_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


