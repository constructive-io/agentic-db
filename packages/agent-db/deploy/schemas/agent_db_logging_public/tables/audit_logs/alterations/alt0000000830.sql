-- Deploy: schemas/agent_db_logging_public/tables/audit_logs/alterations/alt0000000830
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_logging_public/schema
-- requires: schemas/agent_db_logging_public/tables/audit_logs/table


COMMENT ON TABLE agent_db_logging_public.audit_logs IS E'Append-only audit log of authentication events (sign-in, sign-up, password changes, etc.)';

