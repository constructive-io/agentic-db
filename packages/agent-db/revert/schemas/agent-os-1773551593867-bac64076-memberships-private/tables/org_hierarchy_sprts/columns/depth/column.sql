-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/depth/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-private".org_hierarchy_sprts 
  DROP COLUMN depth RESTRICT;


