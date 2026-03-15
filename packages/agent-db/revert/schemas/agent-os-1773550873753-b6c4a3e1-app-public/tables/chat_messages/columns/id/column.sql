-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  DROP COLUMN id RESTRICT;


