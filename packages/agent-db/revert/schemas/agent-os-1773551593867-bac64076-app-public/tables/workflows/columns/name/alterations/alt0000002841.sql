-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/workflows/columns/name/alterations/alt0000002841


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".workflows 
  ALTER COLUMN name DROP NOT NULL;


