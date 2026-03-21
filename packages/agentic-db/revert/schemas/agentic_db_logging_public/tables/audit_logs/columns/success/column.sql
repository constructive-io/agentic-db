-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/columns/success/column


ALTER TABLE "agentic_db_logging_public".audit_logs 
  DROP COLUMN success RESTRICT;


