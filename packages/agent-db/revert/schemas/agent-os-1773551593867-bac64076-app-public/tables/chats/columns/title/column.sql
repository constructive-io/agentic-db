-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/title/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  DROP COLUMN title RESTRICT;


