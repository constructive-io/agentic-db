-- Deploy: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/storage_url/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_message_attachments/table


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  ADD COLUMN storage_url text;

