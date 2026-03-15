-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/columns/is_recurring/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
  DROP COLUMN is_recurring RESTRICT;


