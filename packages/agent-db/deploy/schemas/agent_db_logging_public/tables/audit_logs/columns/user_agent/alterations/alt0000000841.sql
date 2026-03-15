-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/columns/user_agent/alterations/alt0000000841
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/columns/user_agent/column


COMMENT ON COLUMN agent_db_logging_public.audit_logs.user_agent IS E'Browser or client user-agent string from the request';

