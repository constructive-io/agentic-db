-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  DROP COLUMN embedding RESTRICT;


