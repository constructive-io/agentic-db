-- Revert: schemas/agent_db_app_public/tables/chat_messages/columns/entity_id/alterations/alt0000002000


ALTER TABLE "agent_db_app_public".chat_messages 
  ALTER COLUMN entity_id DROP NOT NULL;


