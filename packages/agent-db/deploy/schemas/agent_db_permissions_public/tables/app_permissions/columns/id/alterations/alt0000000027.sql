-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/columns/id/alterations/alt0000000027
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/columns/id/column


ALTER TABLE agent_db_permissions_public.app_permissions 
  ALTER COLUMN id SET NOT NULL;

