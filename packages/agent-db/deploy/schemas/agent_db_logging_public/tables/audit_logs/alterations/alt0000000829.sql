-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/alterations/alt0000000829
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


ALTER TABLE agent_db_logging_public.audit_logs 
  DISABLE ROW LEVEL SECURITY;

