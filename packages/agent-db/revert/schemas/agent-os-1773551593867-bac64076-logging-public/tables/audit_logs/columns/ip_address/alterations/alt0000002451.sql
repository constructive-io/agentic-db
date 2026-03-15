-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/ip_address/alterations/alt0000002451




ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
    ALTER COLUMN ip_address DROP DEFAULT;



