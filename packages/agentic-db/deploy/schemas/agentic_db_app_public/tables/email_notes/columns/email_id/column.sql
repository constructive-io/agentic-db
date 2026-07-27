-- Deploy: schemas/agentic_db_app_public/tables/email_notes/columns/email_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_notes/table


ALTER TABLE agentic_db_app_public.email_notes 
  ADD COLUMN email_id uuid;

