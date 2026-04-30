-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/chunk_index/alterations/alt0000000116


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


