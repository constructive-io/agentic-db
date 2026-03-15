-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/id/alterations/alt0000001165
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/id/column


ALTER TABLE agent_db_app_public.chat_messages 
  ALTER COLUMN id SET NOT NULL;

