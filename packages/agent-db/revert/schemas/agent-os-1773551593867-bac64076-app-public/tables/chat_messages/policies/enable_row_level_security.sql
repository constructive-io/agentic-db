-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  DISABLE ROW LEVEL SECURITY;


