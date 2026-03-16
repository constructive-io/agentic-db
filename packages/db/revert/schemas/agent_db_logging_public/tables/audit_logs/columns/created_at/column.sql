-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/created_at/column


ALTER TABLE "agent_db_logging_public".audit_logs 
  DROP COLUMN created_at RESTRICT;


