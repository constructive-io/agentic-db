-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000002132
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/depth/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_hierarchy_sprts 
  ALTER COLUMN depth SET NOT NULL;

