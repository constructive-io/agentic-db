-- Revert: schemas/agentic_db_app_public/tables/note_chunks/constraints/note_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.note_chunks 
  DROP CONSTRAINT note_chunks_pkey;


