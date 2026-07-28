-- Deploy: schemas/agentic_db_app_public/tables/raw_message_attachments/constraints/raw_message_attachments_raw_message_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_messages/table
-- requires: schemas/agentic_db_app_public/tables/raw_message_attachments/table


ALTER TABLE agentic_db_app_public.raw_message_attachments 
  ADD CONSTRAINT raw_message_attachments_raw_message_id_fkey 
    FOREIGN KEY(raw_message_id) 
    REFERENCES agentic_db_app_public.raw_messages (id) 
    ON DELETE CASCADE;

