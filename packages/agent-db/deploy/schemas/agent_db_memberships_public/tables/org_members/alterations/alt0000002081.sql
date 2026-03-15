-- Deploy: schemas/agent_db_memberships_public/tables/org_members/alterations/alt0000002081
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table


ALTER TABLE "agent_db_memberships_public".org_members 
  DISABLE ROW LEVEL SECURITY;

