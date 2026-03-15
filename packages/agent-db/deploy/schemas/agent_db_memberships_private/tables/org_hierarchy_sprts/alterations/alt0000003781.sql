-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/alterations/alt0000003781
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  DISABLE ROW LEVEL SECURITY;

