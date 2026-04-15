-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/ip_address/alterations/alt0000012847
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/ip_address/column



ALTER TABLE agentic_db_logging_public.audit_logs 
    ALTER COLUMN ip_address SET DEFAULT jwt_public.current_ip_address();

