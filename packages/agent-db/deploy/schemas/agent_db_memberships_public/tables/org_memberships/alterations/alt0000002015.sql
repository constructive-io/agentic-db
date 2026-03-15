-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/alterations/alt0000002015
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


ALTER TABLE "agent_db_memberships_public".org_memberships 
  DISABLE ROW LEVEL SECURITY;

