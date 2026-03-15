-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/title/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  DROP COLUMN title RESTRICT;


