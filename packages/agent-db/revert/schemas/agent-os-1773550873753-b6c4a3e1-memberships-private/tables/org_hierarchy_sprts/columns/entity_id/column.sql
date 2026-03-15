-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_hierarchy_sprts/columns/entity_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-private".org_hierarchy_sprts 
  DROP COLUMN entity_id RESTRICT;


