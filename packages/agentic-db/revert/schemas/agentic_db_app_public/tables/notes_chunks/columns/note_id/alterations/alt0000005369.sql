-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/note_id/alterations/alt0000005369


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN note_id DROP NOT NULL;


