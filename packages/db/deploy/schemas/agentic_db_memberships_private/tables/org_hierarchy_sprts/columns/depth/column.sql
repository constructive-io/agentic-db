-- Deploy: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_private/schema
-- requires: schemas/agentic_db_memberships_private/tables/org_hierarchy_sprts/table


ALTER TABLE "agentic_db_memberships_private".org_hierarchy_sprts 
  ADD COLUMN depth int;

