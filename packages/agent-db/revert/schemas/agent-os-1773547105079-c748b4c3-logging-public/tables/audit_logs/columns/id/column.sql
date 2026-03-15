-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  DROP COLUMN id RESTRICT;


