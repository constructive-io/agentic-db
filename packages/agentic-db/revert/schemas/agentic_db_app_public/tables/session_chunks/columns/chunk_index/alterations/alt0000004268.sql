-- Revert: schemas/agentic_db_app_public/tables/session_chunks/columns/chunk_index/alterations/alt0000004268


ALTER TABLE agentic_db_app_public.session_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


