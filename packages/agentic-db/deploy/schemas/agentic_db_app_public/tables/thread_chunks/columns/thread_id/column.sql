-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/columns/thread_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/indexes/chat_message_chunks_chat_message_id_idx


ALTER TABLE "agentic_db_app_public".thread_chunks 
  ADD COLUMN thread_id uuid;

