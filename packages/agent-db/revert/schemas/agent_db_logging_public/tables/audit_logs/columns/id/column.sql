-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/id/column


ALTER TABLE agent_db_logging_public.audit_logs 
  DROP COLUMN id RESTRICT;


