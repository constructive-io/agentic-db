-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/constraints/notes_chunks_notes_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_app_public.notes_chunks 
  ADD CONSTRAINT notes_chunks_notes_id_fkey 
    FOREIGN KEY(notes_id) 
    REFERENCES agentic_db_app_public.notes (id) 
    ON DELETE CASCADE;

