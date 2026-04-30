-- Deploy: schemas/agentic_db_app_public/tables/event_notes/indexes/event_notes_note_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_notes/table
-- requires: schemas/agentic_db_app_public/tables/event_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


CREATE INDEX event_notes_note_id_idx ON agentic_db_app_public.event_notes USING BTREE ( note_id );

