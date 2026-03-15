-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitstr/alterations/alt0000001736
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/columns/bitstr/column


ALTER TABLE "agent_db_permissions_public".app_permissions 
  ALTER COLUMN bitstr SET NOT NULL;

