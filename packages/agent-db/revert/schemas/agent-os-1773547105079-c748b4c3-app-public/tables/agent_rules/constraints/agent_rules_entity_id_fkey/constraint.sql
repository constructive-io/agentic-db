-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/constraints/agent_rules_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_rules 
  DROP CONSTRAINT agent_rules_entity_id_fkey;


