-- Deploy: schemas/agentic_db_app_public/tables/messages/constraints/messages_conversation_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/conversations/table


ALTER TABLE agentic_db_app_public.messages 
  ADD CONSTRAINT messages_conversation_id_fkey 
    FOREIGN KEY(conversation_id) 
    REFERENCES agentic_db_app_public.conversations (id) 
    ON DELETE CASCADE;

