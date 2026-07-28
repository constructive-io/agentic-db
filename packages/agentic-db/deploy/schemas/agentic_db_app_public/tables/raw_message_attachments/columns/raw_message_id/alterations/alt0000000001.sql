-- Deploy: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/raw_message_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_message_attachments/table
-- requires: schemas/agentic_db_app_public/tables/raw_message_attachments/columns/raw_message_id/column


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  ALTER COLUMN raw_message_id SET NOT NULL;

