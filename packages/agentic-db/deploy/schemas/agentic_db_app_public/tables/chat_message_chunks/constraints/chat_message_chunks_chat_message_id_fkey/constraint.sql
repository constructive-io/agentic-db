-- Deploy: schemas/agentic_db_app_public/tables/chat_message_chunks/constraints/chat_message_chunks_chat_message_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/indexes/chat_chunks_chat_id_idx


ALTER TABLE "agentic_db_app_public".chat_message_chunks 
  ADD CONSTRAINT chat_message_chunks_chat_message_id_fkey 
    FOREIGN KEY(chat_message_id) 
    REFERENCES "agentic_db_app_public".chat_messages (id) 
    ON DELETE CASCADE;

