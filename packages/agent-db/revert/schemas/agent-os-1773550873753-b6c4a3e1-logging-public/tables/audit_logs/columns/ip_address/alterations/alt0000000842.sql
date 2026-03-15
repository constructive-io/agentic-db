-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/ip_address/alterations/alt0000000842




ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
    ALTER COLUMN ip_address DROP DEFAULT;



