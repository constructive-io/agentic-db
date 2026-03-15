-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/columns/id/alterations/alt0000000125
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_admin_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

