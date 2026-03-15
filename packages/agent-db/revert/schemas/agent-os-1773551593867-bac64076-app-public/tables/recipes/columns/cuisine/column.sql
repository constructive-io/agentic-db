-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/cuisine/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  DROP COLUMN cuisine RESTRICT;


