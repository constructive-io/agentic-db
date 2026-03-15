-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/success/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  ADD COLUMN success bool;

