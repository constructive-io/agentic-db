-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/updated_at/alterations/alt0000002771


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  ALTER COLUMN updated_at DROP NOT NULL;


