-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/user_agent/alterations/alt0000002163
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/user_agent/column


COMMENT ON COLUMN agentic_db_logging_public.audit_logs.user_agent IS E'Browser or client user-agent string from the request';

