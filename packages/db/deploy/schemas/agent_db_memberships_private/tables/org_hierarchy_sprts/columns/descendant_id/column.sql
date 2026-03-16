-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/descendant_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table


ALTER TABLE "agent_db_memberships_private".org_hierarchy_sprts 
  ADD COLUMN descendant_id uuid;

