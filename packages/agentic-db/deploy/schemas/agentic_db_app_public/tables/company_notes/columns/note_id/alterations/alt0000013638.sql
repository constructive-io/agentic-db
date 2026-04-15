-- Deploy: schemas/agentic_db_app_public/tables/company_notes/columns/note_id/alterations/alt0000013638
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_notes/indexes/contact_notes_note_id_idx


ALTER TABLE agentic_db_app_public.company_notes 
  ALTER COLUMN note_id SET NOT NULL;

