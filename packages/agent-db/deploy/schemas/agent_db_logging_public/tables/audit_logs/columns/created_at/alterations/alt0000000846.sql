-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/created_at/alterations/alt0000000846
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/created_at/column


ALTER TABLE agent_db_logging_public.audit_logs 
  ALTER COLUMN created_at SET NOT NULL;

