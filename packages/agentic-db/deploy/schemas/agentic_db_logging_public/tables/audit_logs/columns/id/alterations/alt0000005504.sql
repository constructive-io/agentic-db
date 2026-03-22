-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/id/alterations/alt0000005504
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/id/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN id SET NOT NULL;

