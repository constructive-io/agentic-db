-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/constraints/chat_messages_thread_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chat_messages/indexes/chat_messages_chat_id_idx


ALTER TABLE "agentic_db_app_public".chat_messages 
  ADD CONSTRAINT chat_messages_thread_id_fkey 
    FOREIGN KEY(thread_id) 
    REFERENCES "agentic_db_app_public".threads (id) 
    ON DELETE SET NULL;

