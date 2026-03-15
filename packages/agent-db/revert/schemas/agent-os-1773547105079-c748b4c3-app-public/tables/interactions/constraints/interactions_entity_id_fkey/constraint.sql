-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/constraints/interactions_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  DROP CONSTRAINT interactions_entity_id_fkey;


