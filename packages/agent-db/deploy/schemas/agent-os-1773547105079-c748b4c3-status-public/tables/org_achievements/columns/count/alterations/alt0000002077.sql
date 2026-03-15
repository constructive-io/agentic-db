-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/count/alterations/alt0000002077
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/count/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_achievements 
    ALTER COLUMN count SET DEFAULT 0;

