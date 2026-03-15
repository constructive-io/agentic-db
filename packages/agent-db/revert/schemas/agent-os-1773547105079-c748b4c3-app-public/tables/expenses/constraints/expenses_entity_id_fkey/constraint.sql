-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/constraints/expenses_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expenses 
  DROP CONSTRAINT expenses_entity_id_fkey;


