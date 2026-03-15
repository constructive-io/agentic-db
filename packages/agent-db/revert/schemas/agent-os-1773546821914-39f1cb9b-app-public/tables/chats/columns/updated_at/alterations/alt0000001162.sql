-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/updated_at/alterations/alt0000001162


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  ALTER COLUMN updated_at DROP NOT NULL;


