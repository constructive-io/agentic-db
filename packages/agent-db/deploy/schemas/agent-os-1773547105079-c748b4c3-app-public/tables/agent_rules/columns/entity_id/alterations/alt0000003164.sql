-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/columns/entity_id/alterations/alt0000003164
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_skills/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_rules 
  ALTER COLUMN entity_id SET NOT NULL;

