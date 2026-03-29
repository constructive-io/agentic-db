-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/created_at/alterations/alt0000005062
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/created_at/column


ALTER TABLE agentic_db_logging_public.audit_logs 
  ALTER COLUMN created_at SET NOT NULL;

