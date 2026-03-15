-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/created_at/alterations/alt0000002066
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_steps/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_steps 
  ALTER COLUMN created_at SET DEFAULT now();

