-- Deploy: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/columns/id/alterations/alt0000001897
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-permissions-public/tables/org_permission_defaults/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-permissions-public".org_permission_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

