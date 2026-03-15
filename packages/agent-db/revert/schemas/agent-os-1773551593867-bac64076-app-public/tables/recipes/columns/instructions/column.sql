-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/instructions/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
  DROP COLUMN instructions RESTRICT;


