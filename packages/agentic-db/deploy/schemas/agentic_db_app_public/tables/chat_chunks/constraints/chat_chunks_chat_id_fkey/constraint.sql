-- Deploy: schemas/agentic_db_app_public/tables/chat_chunks/constraints/chat_chunks_chat_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/table
-- requires: schemas/agentic_db_app_public/tables/session_chunks/indexes/session_chunks_session_id_idx


ALTER TABLE "agentic_db_app_public".chat_chunks 
  ADD CONSTRAINT chat_chunks_chat_id_fkey 
    FOREIGN KEY(chat_id) 
    REFERENCES "agentic_db_app_public".chats (id) 
    ON DELETE CASCADE;

