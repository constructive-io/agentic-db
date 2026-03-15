-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/event/alterations/alt0000000833


ALTER TABLE agent_db_logging_public.audit_logs 
  ALTER COLUMN event DROP NOT NULL;


