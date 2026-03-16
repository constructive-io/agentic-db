-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/id/alterations/alt0000001683
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/id/column


ALTER TABLE "agent_db_logging_public".audit_logs 
  ALTER COLUMN id SET NOT NULL;

