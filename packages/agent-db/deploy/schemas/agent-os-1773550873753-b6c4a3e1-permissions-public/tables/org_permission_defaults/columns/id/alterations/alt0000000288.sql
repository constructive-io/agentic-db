-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permission_defaults/columns/id/alterations/alt0000000288
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permission_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-permissions-public/tables/org_permission_defaults/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-permissions-public".org_permission_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

