-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/columns/tool_calls/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  DROP COLUMN tool_calls RESTRICT;


