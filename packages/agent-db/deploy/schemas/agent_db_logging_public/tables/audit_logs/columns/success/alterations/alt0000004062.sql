-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/success/alterations/alt0000004062
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/success/column


ALTER TABLE "agent_db_logging_public".audit_logs 
  ALTER COLUMN success SET NOT NULL;

