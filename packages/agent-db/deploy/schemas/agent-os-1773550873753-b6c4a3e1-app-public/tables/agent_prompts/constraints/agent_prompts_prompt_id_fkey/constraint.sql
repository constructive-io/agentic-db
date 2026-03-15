-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_prompts/constraints/agent_prompts_prompt_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_prompts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_prompts 
  ADD CONSTRAINT agent_prompts_prompt_id_fkey 
    FOREIGN KEY(prompt_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".prompts (id) 
    ON DELETE CASCADE;

