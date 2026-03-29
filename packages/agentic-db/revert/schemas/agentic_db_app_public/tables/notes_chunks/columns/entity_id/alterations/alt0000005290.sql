-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/columns/entity_id/alterations/alt0000005290


ALTER TABLE agentic_db_app_public.notes_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


