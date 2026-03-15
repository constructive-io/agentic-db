-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/user_agent/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  DROP COLUMN user_agent RESTRICT;


