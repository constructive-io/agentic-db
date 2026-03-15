-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chat_messages/columns/id/alterations/alt0000002774


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chat_messages 
  ALTER COLUMN id DROP NOT NULL;


