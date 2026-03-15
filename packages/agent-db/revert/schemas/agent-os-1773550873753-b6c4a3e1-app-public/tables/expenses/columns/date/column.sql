-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expenses/columns/date/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".expenses 
  DROP COLUMN date RESTRICT;


