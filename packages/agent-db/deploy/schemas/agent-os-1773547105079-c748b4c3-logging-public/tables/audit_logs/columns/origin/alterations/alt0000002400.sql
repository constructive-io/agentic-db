-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/origin/alterations/alt0000002400
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/origin/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-logging-public".audit_logs.origin IS E'Request origin (domain) where the auth event occurred';

