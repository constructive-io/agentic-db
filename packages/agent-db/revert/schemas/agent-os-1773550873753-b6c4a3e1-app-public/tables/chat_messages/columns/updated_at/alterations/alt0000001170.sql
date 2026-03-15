-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chat_messages/columns/updated_at/alterations/alt0000001170


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chat_messages 
  ALTER COLUMN updated_at DROP NOT NULL;


