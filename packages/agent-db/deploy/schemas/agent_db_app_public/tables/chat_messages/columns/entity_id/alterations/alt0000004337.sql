-- Deploy: schemas/agent_db_app_public/tables/chat_messages/columns/entity_id/alterations/alt0000004337
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chat_messages/table
-- requires: schemas/agent_db_app_public/tables/chats/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/chat_messages/columns/entity_id/column


ALTER TABLE "agent_db_app_public".chat_messages 
  ALTER COLUMN entity_id SET NOT NULL;

