-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/event/alterations/alt0000002395
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/event/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-logging-public".audit_logs.event IS E'Type of authentication event (e.g. sign_in, sign_up, password_change, verify_email)';

