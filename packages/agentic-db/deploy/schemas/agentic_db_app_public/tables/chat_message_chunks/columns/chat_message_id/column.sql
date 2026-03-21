-- Deploy: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/chat_message_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/indexes/chat_chunks_chat_id_idx


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  ADD COLUMN chat_message_id uuid;

