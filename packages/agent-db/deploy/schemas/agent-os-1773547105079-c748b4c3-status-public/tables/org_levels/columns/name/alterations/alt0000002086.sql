-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/columns/name/alterations/alt0000002086
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_levels 
  ALTER COLUMN name SET NOT NULL;

