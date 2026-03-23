-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/columns/created_at/alterations/alt0000002559
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/columns/created_at/column


COMMENT ON COLUMN agentic_db_logging_public.audit_logs.created_at IS 'Timestamp when the audit event was recorded';

