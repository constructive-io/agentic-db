-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/occurred_at/alterations/alt0000002536


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ALTER COLUMN occurred_at DROP NOT NULL;


