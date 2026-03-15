-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
  DROP COLUMN tags RESTRICT;


