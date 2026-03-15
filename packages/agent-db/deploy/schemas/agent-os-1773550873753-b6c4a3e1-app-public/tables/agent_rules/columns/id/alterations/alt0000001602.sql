-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_rules/columns/id/alterations/alt0000001602
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_rules/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_rules/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_rules 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

