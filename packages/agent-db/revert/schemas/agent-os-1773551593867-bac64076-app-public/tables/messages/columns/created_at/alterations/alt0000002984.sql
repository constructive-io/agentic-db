-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/created_at/alterations/alt0000002984


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".messages 
  ALTER COLUMN created_at DROP NOT NULL;


