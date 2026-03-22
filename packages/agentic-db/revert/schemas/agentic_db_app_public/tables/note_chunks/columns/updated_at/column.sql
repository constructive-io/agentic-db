-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.note_chunks 
  DROP COLUMN updated_at RESTRICT;


