-- Deploy: schemas/agentic_db_app_public/tables/email_notes/constraints/email_notes_email_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.email_notes 
  ADD CONSTRAINT email_notes_email_id_fkey 
    FOREIGN KEY(email_id) 
    REFERENCES agentic_db_app_public.emails (id) 
    ON DELETE CASCADE;

