-- Revert: schemas/agentic_db_app_public/tables/note_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.note_chunks 
  DROP COLUMN entity_id RESTRICT;


