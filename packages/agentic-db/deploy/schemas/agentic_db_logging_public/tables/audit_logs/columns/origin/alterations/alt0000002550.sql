-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/origin/alterations/alt0000002550
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/origin/column


COMMENT ON COLUMN agentic_db_logging_public.audit_logs.origin IS E'Request origin (domain) where the auth event occurred';

