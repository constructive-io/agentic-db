-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/origin/alterations/alt0000010328
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/origin/column



ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();

