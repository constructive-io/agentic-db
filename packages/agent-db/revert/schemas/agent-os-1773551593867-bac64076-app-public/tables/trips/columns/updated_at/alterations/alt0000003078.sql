-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/updated_at/alterations/alt0000003078


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ALTER COLUMN updated_at DROP NOT NULL;


