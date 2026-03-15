-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/success/alterations/alt0000002405


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  ALTER COLUMN success DROP NOT NULL;


