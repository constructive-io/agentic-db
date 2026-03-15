-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/constraints/org_steps_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
  DROP CONSTRAINT org_steps_entity_id_fkey;


