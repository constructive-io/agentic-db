-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/notes_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN notes_id DROP NOT NULL;


