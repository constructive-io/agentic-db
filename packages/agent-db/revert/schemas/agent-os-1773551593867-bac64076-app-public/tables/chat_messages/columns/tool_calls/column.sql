-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/tool_calls/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  DROP COLUMN tool_calls RESTRICT;


