-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/constraints/workflows_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
  DROP CONSTRAINT workflows_entity_id_fkey;


