-- Deploy: schemas/agentic_db_app_public/tables/raw_messages/constraints/raw_messages_sender_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/raw_messages/table


ALTER TABLE agentic_db_app_public.raw_messages 
  ADD CONSTRAINT raw_messages_sender_contact_id_fkey 
    FOREIGN KEY(sender_contact_id) 
    REFERENCES agentic_db_app_public.contacts (id) 
    ON DELETE SET NULL;

