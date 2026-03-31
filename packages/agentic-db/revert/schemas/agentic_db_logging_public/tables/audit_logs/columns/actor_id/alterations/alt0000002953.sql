-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/actor_id/alterations/alt0000002953




ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN actor_id DROP DEFAULT;



