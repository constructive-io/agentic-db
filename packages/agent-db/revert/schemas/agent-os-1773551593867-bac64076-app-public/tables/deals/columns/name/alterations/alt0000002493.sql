-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/name/alterations/alt0000002493


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  ALTER COLUMN name DROP NOT NULL;


