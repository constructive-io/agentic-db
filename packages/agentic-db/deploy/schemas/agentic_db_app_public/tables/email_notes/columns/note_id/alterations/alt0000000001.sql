-- Deploy: schemas/agentic_db_app_public/tables/email_notes/columns/note_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table
-- requires: schemas/agentic_db_app_public/tables/email_notes/columns/note_id/column


ALTER TABLE agentic_db_app_public.email_notes 
  ALTER COLUMN note_id SET NOT NULL;

