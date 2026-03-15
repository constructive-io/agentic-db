-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/columns/id/alterations/alt0000001979
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/columns/id/column


ALTER TABLE "agent_db_permissions_public".org_permissions 
  ALTER COLUMN id SET NOT NULL;

