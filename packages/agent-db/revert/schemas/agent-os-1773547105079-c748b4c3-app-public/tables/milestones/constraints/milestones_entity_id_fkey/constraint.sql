-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/constraints/milestones_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
  DROP CONSTRAINT milestones_entity_id_fkey;


