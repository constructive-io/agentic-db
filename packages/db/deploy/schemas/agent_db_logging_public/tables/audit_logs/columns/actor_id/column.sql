-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/actor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


ALTER TABLE "agent_db_logging_public".audit_logs 
  ADD COLUMN actor_id uuid;

