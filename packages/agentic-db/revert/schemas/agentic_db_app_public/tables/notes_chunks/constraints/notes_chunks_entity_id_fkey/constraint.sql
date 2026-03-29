-- Revert: schemas/agentic_db_app_public/tables/notes_chunks/constraints/notes_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.notes_chunks 
  DROP CONSTRAINT notes_chunks_entity_id_fkey;


