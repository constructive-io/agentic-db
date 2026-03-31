-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/content/alterations/alt0000003121


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN content DROP NOT NULL;


