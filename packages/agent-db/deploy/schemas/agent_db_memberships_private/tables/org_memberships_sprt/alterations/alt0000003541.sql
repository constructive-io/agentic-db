-- Deploy: schemas/agent_db_memberships_private/tables/org_memberships_sprt/alterations/alt0000003541
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_memberships_sprt/table


ALTER TABLE "agent_db_memberships_private".org_memberships_sprt 
  DISABLE ROW LEVEL SECURITY;

