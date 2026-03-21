-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/alterations/alt0000004127
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding/column


ALTER TABLE agentic_db_app_public.chat_messages 
  DISABLE ROW LEVEL SECURITY;

