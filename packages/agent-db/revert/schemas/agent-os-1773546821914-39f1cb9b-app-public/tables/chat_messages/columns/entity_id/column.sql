-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  DROP COLUMN entity_id RESTRICT;


