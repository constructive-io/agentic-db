-- Deploy: schemas/agentic_db_app_public/tables/thread_chunks/alterations/alt0000004290
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.thread_chunks 
  DISABLE ROW LEVEL SECURITY;

