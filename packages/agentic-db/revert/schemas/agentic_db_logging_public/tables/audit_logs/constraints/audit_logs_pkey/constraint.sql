-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/constraints/audit_logs_pkey/constraint


ALTER TABLE agentic_db_logging_public.audit_logs 
  DROP CONSTRAINT audit_logs_pkey;


