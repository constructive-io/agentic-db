-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expenses/constraints/expenses_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expenses 
  DROP CONSTRAINT expenses_entity_id_fkey;


