-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/ip_address/alterations/alt0000010332




ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN ip_address DROP DEFAULT;



