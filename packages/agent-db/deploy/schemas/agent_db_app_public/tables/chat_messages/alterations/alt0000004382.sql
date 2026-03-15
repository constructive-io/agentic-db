-- Deploy: schemas/agent_db_app_public/tables/chat_messages/alterations/alt0000004382
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/embedding/column


ALTER TABLE "agent_db_app_public".chat_messages 
  DISABLE ROW LEVEL SECURITY;

