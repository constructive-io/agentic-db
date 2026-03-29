-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/note_id/column


ALTER TABLE agentic_db_app_public.notes_chunks 
  DROP COLUMN note_id RESTRICT;


