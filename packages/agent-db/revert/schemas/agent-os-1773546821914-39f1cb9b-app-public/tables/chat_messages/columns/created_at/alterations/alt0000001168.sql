-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chat_messages/columns/created_at/alterations/alt0000001168


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chat_messages 
  ALTER COLUMN created_at DROP NOT NULL;


