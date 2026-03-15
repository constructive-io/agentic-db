-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/name/alterations/alt0000003080


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ALTER COLUMN name DROP NOT NULL;


