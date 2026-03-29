-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/success/alterations/alt0000003375
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/success/column


COMMENT ON COLUMN agentic_db_logging_public.audit_logs.success IS 'Whether the authentication attempt succeeded';

