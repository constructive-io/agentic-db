-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/created_at/alterations/alt0000001160


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  ALTER COLUMN created_at DROP NOT NULL;


