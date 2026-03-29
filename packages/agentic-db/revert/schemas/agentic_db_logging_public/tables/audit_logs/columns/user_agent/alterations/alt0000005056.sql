-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/user_agent/alterations/alt0000005056




ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN user_agent DROP DEFAULT;



