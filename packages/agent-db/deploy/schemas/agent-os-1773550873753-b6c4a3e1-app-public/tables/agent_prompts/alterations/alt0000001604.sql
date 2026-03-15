-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_prompts/alterations/alt0000001604
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_prompts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_prompts 
  DISABLE ROW LEVEL SECURITY;

