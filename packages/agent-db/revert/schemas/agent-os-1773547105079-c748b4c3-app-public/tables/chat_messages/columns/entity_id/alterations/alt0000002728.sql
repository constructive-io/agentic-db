-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/columns/entity_id/alterations/alt0000002728


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
  ALTER COLUMN entity_id DROP NOT NULL;


