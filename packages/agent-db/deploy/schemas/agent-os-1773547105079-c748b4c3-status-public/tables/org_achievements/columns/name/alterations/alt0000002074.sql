-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/name/alterations/alt0000002074
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/name/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_achievements 
  ALTER COLUMN name SET NOT NULL;

