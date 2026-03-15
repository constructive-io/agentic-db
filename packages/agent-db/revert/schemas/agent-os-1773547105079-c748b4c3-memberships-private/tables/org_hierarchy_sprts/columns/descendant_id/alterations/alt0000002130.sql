-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000002130


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN descendant_id DROP NOT NULL;


