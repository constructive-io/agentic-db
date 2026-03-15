-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000002128


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN ancestor_id DROP NOT NULL;


