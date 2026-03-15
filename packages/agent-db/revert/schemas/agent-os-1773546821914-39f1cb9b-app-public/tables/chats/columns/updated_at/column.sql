-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  DROP COLUMN updated_at RESTRICT;


