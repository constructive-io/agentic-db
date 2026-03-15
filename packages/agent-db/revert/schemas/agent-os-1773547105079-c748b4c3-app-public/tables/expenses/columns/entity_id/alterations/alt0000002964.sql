-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/entity_id/alterations/alt0000002964


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expenses 
  ALTER COLUMN entity_id DROP NOT NULL;


