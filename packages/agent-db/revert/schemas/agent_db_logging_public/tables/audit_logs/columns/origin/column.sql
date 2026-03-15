-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/origin/column


ALTER TABLE agent_db_logging_public.audit_logs 
  DROP COLUMN origin RESTRICT;


