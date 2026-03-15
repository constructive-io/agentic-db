-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/success/alterations/alt0000004062


ALTER TABLE "agent_db_logging_public".audit_logs 
  ALTER COLUMN success DROP NOT NULL;


