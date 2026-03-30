-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/ip_address/column


ALTER TABLE "agentic_db_logging_public".audit_logs 
  DROP COLUMN ip_address RESTRICT;


