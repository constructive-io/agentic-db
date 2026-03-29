-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/id/alterations/alt0000010322


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN id DROP NOT NULL;


