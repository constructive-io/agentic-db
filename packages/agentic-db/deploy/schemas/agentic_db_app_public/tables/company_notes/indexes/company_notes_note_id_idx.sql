-- Deploy: schemas/agentic_db_app_public/tables/company_notes/indexes/company_notes_note_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/company_notes/columns/note_id/column


CREATE INDEX company_notes_note_id_idx ON agentic_db_app_public.company_notes USING BTREE ( note_id );

