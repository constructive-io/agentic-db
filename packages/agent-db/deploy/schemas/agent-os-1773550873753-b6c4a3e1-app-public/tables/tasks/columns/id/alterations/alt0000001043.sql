-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/id/alterations/alt0000001043
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/deal_contacts/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

