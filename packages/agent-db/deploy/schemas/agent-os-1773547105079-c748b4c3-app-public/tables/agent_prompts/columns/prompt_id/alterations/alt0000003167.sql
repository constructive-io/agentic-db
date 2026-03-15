-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/columns/prompt_id/alterations/alt0000003167
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_prompts/columns/prompt_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_rules/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_prompts 
  ALTER COLUMN prompt_id SET NOT NULL;

