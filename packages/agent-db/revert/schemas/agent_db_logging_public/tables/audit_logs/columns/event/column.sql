-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/event/column


ALTER TABLE agent_db_logging_public.audit_logs 
  DROP COLUMN event RESTRICT;


