-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/created_at/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


ALTER TABLE agentic_db_logging_public.audit_logs 
  ADD COLUMN created_at timestamptz;

