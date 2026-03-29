-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/id/alterations/alt0000003363




ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN id DROP DEFAULT;



