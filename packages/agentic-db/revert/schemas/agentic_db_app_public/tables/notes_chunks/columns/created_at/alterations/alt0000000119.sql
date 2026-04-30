-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/created_at/alterations/alt0000000119


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


