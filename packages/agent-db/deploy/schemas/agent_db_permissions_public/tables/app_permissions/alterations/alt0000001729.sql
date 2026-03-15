-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/alterations/alt0000001729
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table


ALTER TABLE "agent_db_permissions_public".app_permissions 
  DISABLE ROW LEVEL SECURITY;

