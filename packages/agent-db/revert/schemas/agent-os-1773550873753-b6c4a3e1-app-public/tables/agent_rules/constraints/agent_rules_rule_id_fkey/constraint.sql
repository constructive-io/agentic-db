-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_rules/constraints/agent_rules_rule_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_rules 
  DROP CONSTRAINT agent_rules_rule_id_fkey;


