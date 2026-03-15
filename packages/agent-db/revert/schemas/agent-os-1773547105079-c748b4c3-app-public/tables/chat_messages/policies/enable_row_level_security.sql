-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chat_messages/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chat_messages 
  DISABLE ROW LEVEL SECURITY;


