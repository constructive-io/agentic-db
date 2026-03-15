-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/policies/enable_row_level_security


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  DISABLE ROW LEVEL SECURITY;


