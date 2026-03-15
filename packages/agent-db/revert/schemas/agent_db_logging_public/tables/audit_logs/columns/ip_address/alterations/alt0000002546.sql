-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/ip_address/alterations/alt0000002546




ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN ip_address DROP DEFAULT;



