-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000002456




ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
    ALTER COLUMN created_at DROP DEFAULT;



