-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/created_at/alterations/alt0000002964




ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN created_at DROP DEFAULT;



