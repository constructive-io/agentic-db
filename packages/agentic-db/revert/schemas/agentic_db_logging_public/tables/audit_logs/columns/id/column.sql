-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/id/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  DROP COLUMN id RESTRICT;


