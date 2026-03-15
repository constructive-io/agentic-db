-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/updated_at/alterations/alt0000001170


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  ALTER COLUMN updated_at DROP NOT NULL;


