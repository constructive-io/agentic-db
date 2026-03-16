-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/tool_calls/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/content/column


ALTER TABLE "agent_db_app_public".chat_messages 
  ADD COLUMN tool_calls jsonb;

