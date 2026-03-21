-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/success/alterations/alt0000003674
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/success/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN success SET NOT NULL;

