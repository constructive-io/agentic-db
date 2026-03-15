-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/event/alterations/alt0000002394


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  ALTER COLUMN event DROP NOT NULL;


