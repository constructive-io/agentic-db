-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/alterations/alt0000000830
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/table


COMMENT ON TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs IS E'Append-only audit log of authentication events (sign-in, sign-up, password changes, etc.)';

