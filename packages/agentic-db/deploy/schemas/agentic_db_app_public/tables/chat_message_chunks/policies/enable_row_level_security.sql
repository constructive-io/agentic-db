-- Deploy: schemas/agentic_db_app_public/tables/chat_message_chunks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_message_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chat_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.chat_message_chunks 
  ENABLE ROW LEVEL SECURITY;

