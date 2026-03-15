-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/id/alterations/alt0000002071
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_achievements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

