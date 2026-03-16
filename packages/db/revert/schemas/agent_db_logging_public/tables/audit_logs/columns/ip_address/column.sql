-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/ip_address/column


ALTER TABLE "agent_db_logging_public".audit_logs 
  DROP COLUMN ip_address RESTRICT;


