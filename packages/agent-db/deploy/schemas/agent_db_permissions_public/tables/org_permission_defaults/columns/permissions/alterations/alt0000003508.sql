-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/alterations/alt0000003508
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/column



ALTER TABLE "agent_db_permissions_public".org_permission_defaults 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

