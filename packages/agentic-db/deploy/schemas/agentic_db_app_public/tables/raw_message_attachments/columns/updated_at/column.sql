-- Deploy: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/updated_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_message_attachments/table


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  ADD COLUMN updated_at timestamptz;

