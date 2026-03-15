-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000002398
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-logging-public".audit_logs.actor_id IS 'User who performed the authentication action';

