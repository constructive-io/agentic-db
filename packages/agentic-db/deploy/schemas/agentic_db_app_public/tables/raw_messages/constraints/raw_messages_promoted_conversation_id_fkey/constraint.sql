-- Deploy: schemas/agentic_db_app_public/tables/raw_messages/constraints/raw_messages_promoted_conversation_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/raw_messages/table
-- requires: schemas/agentic_db_app_public/tables/conversations/table


ALTER TABLE agentic_db_app_public.raw_messages 
  ADD CONSTRAINT raw_messages_promoted_conversation_id_fkey 
    FOREIGN KEY(promoted_conversation_id) 
    REFERENCES agentic_db_app_public.conversations (id) 
    ON DELETE SET NULL;

