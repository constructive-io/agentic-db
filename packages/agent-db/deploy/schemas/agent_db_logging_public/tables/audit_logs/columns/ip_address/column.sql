-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/ip_address/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


ALTER TABLE agent_db_logging_public.audit_logs 
  ADD COLUMN ip_address inet;

