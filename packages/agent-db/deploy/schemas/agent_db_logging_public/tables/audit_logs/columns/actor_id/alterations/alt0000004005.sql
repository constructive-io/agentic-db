-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/actor_id/alterations/alt0000004005
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/actor_id/column


ALTER TABLE "agent_db_logging_public".audit_logs 
  ALTER COLUMN actor_id SET NOT NULL;

