-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/columns/storage_url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table


ALTER TABLE agentic_db_app_public.email_attachments 
  ADD COLUMN storage_url text;

