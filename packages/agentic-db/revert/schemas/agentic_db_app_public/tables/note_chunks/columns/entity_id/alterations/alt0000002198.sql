-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/entity_id/alterations/alt0000002198


ALTER TABLE agentic_db_app_public.note_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


