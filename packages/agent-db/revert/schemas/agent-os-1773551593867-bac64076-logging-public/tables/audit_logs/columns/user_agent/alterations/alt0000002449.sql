-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/user_agent/alterations/alt0000002449




ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
    ALTER COLUMN user_agent DROP DEFAULT;



