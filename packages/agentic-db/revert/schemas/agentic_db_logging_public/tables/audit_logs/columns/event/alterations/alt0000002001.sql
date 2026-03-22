-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/event/alterations/alt0000002001


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN event DROP NOT NULL;


