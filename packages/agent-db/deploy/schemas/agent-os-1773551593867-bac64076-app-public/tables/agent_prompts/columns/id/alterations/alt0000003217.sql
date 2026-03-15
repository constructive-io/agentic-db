-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/columns/id/alterations/alt0000003217
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_prompts/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_rules/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_prompts 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

