-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/columns/id/alterations/alt0000000458
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_permissions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

