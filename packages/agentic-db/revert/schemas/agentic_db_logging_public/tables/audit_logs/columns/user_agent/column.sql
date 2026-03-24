-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/user_agent/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  DROP COLUMN user_agent RESTRICT;


