-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.notes_chunks 
  DROP COLUMN chunk_index RESTRICT;


