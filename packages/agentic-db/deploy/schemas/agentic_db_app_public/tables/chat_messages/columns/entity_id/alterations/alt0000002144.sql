-- Deploy: schemas/agentic_db_app_public/tables/chat_messages/columns/entity_id/alterations/alt0000002144
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chat_messages/table
-- requires: schemas/agentic_db_app_public/tables/chats/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/chat_messages/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".chat_messages 
  ALTER COLUMN entity_id SET NOT NULL;

