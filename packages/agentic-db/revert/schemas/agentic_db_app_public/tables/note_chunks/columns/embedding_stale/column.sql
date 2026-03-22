-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.note_chunks 
  DROP COLUMN embedding_stale RESTRICT;


