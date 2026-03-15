-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_hierarchy_sprts 
  DROP COLUMN ancestor_id RESTRICT;


