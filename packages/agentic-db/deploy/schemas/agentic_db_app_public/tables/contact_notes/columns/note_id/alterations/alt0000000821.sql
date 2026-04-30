-- Deploy: schemas/agentic_db_app_public/tables/contact_notes/columns/note_id/alterations/alt0000000821
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/columns/note_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.contact_notes 
  ALTER COLUMN note_id SET NOT NULL;

