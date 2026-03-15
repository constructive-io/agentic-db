-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/event/alterations/alt0000004051
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/event/column


ALTER TABLE "agent_db_logging_public".audit_logs 
  ALTER COLUMN event SET NOT NULL;

