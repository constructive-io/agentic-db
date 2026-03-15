-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/columns/prompt_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
  ADD COLUMN prompt_id uuid;

