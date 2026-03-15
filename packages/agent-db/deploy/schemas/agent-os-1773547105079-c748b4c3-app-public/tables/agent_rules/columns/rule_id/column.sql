-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/columns/rule_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_rules 
  ADD COLUMN rule_id uuid;

