-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  DROP COLUMN created_at RESTRICT;


