-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/currency/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expenses 
  DROP COLUMN currency RESTRICT;


