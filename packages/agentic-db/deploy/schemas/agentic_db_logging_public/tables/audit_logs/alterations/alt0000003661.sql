-- Deploy: schemas/agentic_db_logging_public/tables/audit_logs/alterations/alt0000003661
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_logging_public/schema
-- requires: schemas/agentic_db_logging_public/tables/audit_logs/table


COMMENT ON TABLE agentic_db_logging_public.audit_logs IS E'Append-only audit log of authentication events (sign-in, sign-up, password changes, etc.)';

