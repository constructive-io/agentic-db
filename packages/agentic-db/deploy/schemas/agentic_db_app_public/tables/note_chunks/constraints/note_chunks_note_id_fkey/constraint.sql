-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/constraints/note_chunks_note_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/indexes/venue_chunks_venue_id_idx


ALTER TABLE agentic_db_app_public.note_chunks 
  ADD CONSTRAINT note_chunks_note_id_fkey 
    FOREIGN KEY(note_id) 
    REFERENCES agentic_db_app_public.notes (id) 
    ON DELETE CASCADE;

