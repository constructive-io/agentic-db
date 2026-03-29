-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/ip_address/alterations/alt0000003372




ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN ip_address DROP DEFAULT;



