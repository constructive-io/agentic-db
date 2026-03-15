-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/id/alterations/alt0000001858
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

