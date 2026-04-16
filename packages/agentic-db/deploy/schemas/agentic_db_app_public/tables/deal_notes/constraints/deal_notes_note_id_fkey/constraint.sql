-- Deploy: schemas/agentic_db_app_public/tables/deal_notes/constraints/deal_notes_note_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/deal_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/indexes/company_notes_note_id_idx


ALTER TABLE agentic_db_app_public.deal_notes 
  ADD CONSTRAINT deal_notes_note_id_fkey 
    FOREIGN KEY(note_id) 
    REFERENCES agentic_db_app_public.notes (id) 
    ON DELETE CASCADE;

