-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/constraints/chat_messages_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  DROP CONSTRAINT chat_messages_entity_id_fkey;


