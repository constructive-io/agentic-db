-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_hierarchy_sprts/columns/depth/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_hierarchy_sprts/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_hierarchy_sprts 
  ADD COLUMN depth int;

