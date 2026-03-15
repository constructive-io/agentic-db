-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000000848
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/created_at/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs.created_at IS 'Timestamp when the audit event was recorded';

