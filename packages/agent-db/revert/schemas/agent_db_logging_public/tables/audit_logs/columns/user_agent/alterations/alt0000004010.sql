-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/user_agent/alterations/alt0000004010




ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN user_agent DROP DEFAULT;



