-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  DISABLE ROW LEVEL SECURITY;


