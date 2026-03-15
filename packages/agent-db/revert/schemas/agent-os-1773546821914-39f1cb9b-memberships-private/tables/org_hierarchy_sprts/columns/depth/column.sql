-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/depth/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts 
  DROP COLUMN depth RESTRICT;


