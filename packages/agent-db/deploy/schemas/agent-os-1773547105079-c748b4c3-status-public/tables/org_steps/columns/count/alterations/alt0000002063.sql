-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/count/alterations/alt0000002063
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/count/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
    ALTER COLUMN count SET DEFAULT 1;

