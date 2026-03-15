-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/entity_id/alterations/alt0000001167


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  ALTER COLUMN entity_id DROP NOT NULL;


