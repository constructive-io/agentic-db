-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/id/alterations/alt0000000288
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/id/column



ALTER TABLE agent_db_permissions_public.org_permission_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

