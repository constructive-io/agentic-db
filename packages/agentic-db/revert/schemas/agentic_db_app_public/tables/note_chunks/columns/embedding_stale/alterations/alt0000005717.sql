-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/embedding_stale/alterations/alt0000005717


ALTER TABLE agentic_db_app_public.note_chunks 
  ALTER COLUMN embedding_stale DROP NOT NULL;


