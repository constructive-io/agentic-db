-- Deploy: schemas/agent_db_app_public/tables/chat_messages/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/embedding/column


ALTER TABLE agent_db_app_public.chat_messages 
  ENABLE ROW LEVEL SECURITY;

