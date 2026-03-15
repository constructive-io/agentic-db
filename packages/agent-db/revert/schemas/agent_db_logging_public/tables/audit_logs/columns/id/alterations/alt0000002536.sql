-- Revert: schemas/agent_db_logging_public/tables/audit_logs/columns/id/alterations/alt0000002536




ALTER TABLE "agent_db_logging_public".audit_logs 
    ALTER COLUMN id DROP DEFAULT;



