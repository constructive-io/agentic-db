-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/event/alterations/alt0000002001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/event/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN event SET NOT NULL;

