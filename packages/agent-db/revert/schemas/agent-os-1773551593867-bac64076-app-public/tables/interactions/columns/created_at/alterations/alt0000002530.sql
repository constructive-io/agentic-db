-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/created_at/alterations/alt0000002530


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ALTER COLUMN created_at DROP NOT NULL;


