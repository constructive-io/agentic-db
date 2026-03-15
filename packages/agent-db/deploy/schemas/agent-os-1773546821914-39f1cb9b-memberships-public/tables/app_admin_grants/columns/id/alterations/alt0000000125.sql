-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/id/alterations/alt0000000125
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

