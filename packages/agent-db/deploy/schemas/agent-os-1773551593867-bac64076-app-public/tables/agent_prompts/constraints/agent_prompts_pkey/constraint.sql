-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/constraints/agent_prompts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  ADD CONSTRAINT agent_prompts_pkey PRIMARY KEY (id);

