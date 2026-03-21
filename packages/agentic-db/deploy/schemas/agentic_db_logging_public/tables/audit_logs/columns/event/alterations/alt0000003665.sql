-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/event/alterations/alt0000003665
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/event/column


COMMENT ON COLUMN agentic_db_logging_public.audit_logs.event IS E'Type of authentication event (e.g. sign_in, sign_up, password_change, verify_email)';

