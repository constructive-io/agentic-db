-- Deploy: schemas/agentic_db_app_public/tables/task_notes/columns/note_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.task_notes 
  ADD COLUMN note_id uuid;

