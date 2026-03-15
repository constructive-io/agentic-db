-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


ALTER TABLE "agent_db_logging_public".audit_logs 
  ADD COLUMN created_at timestamptz;

