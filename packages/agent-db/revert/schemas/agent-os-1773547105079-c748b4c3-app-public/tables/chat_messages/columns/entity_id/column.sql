-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
  DROP COLUMN entity_id RESTRICT;


