-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/constraints/agent_rules_rule_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_rules 
  ADD CONSTRAINT agent_rules_rule_id_fkey 
    FOREIGN KEY(rule_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".rules (id) 
    ON DELETE CASCADE;

