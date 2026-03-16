-- Deploy: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/id/alterations/alt0000000891
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/table
-- requires: schemas/agent_db_permissions_public/tables/app_permission_defaults/columns/id/column


ALTER TABLE "agent_db_permissions_public".app_permission_defaults 
  ALTER COLUMN id SET NOT NULL;

