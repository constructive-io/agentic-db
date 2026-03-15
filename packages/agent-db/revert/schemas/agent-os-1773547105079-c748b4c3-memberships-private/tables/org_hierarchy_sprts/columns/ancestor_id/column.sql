-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_hierarchy_sprts 
  DROP COLUMN ancestor_id RESTRICT;


