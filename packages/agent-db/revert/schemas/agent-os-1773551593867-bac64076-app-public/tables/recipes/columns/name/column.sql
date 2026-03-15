-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/name/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  DROP COLUMN name RESTRICT;


