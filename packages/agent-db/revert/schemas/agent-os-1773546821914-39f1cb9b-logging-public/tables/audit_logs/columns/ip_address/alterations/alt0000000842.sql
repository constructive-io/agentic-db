-- Revert: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/ip_address/alterations/alt0000000842




ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
    ALTER COLUMN ip_address DROP DEFAULT;



