-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/alterations/alt0000002106
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/table


ALTER TABLE "agent_db_memberships_public".org_owner_grants 
  DISABLE ROW LEVEL SECURITY;

