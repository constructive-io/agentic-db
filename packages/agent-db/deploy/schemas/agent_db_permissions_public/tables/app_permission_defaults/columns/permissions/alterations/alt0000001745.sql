-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000001745
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/permissions/column


ALTER TABLE "agent_db_permissions_public".app_permission_defaults 
  ALTER COLUMN permissions SET NOT NULL;

