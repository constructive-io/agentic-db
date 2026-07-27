-- Deploy: schemas/agentic_db_app_public/tables/event_notes/constraints/event_notes_note_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/table


ALTER TABLE agentic_db_app_public.event_notes 
  ADD CONSTRAINT event_notes_note_id_fkey 
    FOREIGN KEY(note_id) 
    REFERENCES agentic_db_app_public.notes (id) 
    ON DELETE CASCADE;

