-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/alterations/alt0000003634
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table


ALTER TABLE "agent_db_memberships_public".org_grants 
  DISABLE ROW LEVEL SECURITY;

