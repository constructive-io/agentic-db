-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/columns/entity_id/alterations/alt0000001167


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  ALTER COLUMN entity_id DROP NOT NULL;


