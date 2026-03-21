-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding/column


ALTER TABLE "agentic_db_app_public".chat_messages 
  ENABLE ROW LEVEL SECURITY;

