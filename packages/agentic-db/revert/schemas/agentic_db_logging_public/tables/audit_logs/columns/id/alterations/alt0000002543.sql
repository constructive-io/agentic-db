-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/id/alterations/alt0000002543


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN id DROP NOT NULL;


