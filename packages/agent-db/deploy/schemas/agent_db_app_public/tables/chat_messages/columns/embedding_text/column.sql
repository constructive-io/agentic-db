-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/tool_calls/column


ALTER TABLE "agent_db_app_public".chat_messages 
  ADD COLUMN embedding_text text;

