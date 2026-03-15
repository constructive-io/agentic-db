-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  ADD COLUMN depth int;

