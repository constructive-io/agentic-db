-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/alterations/alt0000001141
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/columns/permissions/column


ALTER TABLE "agent_db_permissions_public".org_permission_defaults 
  ALTER COLUMN permissions SET NOT NULL;

