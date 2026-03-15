-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/constraints/chat_messages_chat_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
  DROP CONSTRAINT chat_messages_chat_id_fkey;


