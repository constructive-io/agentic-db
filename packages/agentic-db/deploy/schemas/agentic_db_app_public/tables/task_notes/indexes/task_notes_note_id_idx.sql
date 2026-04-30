-- Deploy: schemas/agentic_db_app_public/tables/task_notes/indexes/task_notes_note_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


CREATE INDEX task_notes_note_id_idx ON agentic_db_app_public.task_notes USING BTREE ( note_id );

