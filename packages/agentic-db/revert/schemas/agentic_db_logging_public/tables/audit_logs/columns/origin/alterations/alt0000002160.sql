-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/origin/alterations/alt0000002160




ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN origin DROP DEFAULT;



