-- Deploy: schemas/agent_db_permissions_public/tables/org_permissions/alterations/alt0000001125
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_permissions_public/schema
-- requires: schemas/agent_db_permissions_public/tables/org_permissions/table


ALTER TABLE "agent_db_permissions_public".org_permissions 
  DISABLE ROW LEVEL SECURITY;

