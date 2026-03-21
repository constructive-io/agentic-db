-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/created_at/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  DROP COLUMN created_at RESTRICT;


