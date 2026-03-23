-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/alterations/alt0000002541
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table


ALTER TABLE agentic_db_logging_public.audit_logs 
  DISABLE ROW LEVEL SECURITY;

