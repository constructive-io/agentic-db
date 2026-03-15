-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000002409
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/created_at/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-logging-public".audit_logs.created_at IS 'Timestamp when the audit event was recorded';

