-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/user_agent/alterations/alt0000002401




ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
    ALTER COLUMN user_agent DROP DEFAULT;



