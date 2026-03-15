-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/columns/rule_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_rules 
  DROP COLUMN rule_id RESTRICT;


