-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/alterations/alt0000002130
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN descendant_id SET NOT NULL;

