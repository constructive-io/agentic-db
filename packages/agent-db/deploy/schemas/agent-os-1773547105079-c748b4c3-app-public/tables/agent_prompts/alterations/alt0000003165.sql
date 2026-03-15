-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/alterations/alt0000003165
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_prompts 
  DISABLE ROW LEVEL SECURITY;

