-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/actor_id/alterations/alt0000000835
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/actor_id/column


ALTER TABLE "agentic_db_logging_public".audit_logs 
  ALTER COLUMN actor_id SET NOT NULL;

