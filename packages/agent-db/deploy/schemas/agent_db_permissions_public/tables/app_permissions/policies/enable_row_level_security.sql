-- Deploy: schemas/agent_db_permissions_public/tables/app_permissions/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/app_permissions/table


ALTER TABLE "agent_db_permissions_public".app_permissions 
  ENABLE ROW LEVEL SECURITY;

