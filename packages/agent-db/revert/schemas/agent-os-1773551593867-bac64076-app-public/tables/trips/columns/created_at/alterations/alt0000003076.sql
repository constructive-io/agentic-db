-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/created_at/alterations/alt0000003076


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ALTER COLUMN created_at DROP NOT NULL;


