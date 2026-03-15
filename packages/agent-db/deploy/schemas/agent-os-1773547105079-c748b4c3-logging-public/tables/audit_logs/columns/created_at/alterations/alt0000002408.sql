-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000002408
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/created_at/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
    ALTER COLUMN created_at SET DEFAULT current_timestamp;

