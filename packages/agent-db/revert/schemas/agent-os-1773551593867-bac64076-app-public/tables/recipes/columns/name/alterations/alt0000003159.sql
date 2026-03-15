-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/name/alterations/alt0000003159


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  ALTER COLUMN name DROP NOT NULL;


