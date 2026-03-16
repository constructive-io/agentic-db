-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/created_at/alterations/alt0000001699




ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN created_at DROP DEFAULT;



