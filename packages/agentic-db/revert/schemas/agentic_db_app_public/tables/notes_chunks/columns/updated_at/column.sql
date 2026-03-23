-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.notes_chunks 
  DROP COLUMN updated_at RESTRICT;


