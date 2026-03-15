-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/updated_at/alterations/alt0000002532


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ALTER COLUMN updated_at DROP NOT NULL;


