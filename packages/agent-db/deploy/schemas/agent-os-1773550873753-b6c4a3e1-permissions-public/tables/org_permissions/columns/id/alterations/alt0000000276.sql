-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/columns/id/alterations/alt0000000276
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permissions/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permissions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

