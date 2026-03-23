-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/success/alterations/alt0000002555


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN success DROP NOT NULL;


