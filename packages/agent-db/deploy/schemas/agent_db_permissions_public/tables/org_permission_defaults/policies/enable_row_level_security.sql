-- Deploy: schemas/agent_db_permissions_public/tables/org_permission_defaults/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permission_defaults/table


ALTER TABLE "agent_db_permissions_public".org_permission_defaults 
  ENABLE ROW LEVEL SECURITY;

