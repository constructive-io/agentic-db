-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deals/columns/name/alterations/alt0000000884


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".deals 
  ALTER COLUMN name DROP NOT NULL;


