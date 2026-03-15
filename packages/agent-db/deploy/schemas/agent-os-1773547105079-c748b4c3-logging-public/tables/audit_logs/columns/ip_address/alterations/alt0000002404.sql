-- Deploy: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/ip_address/alterations/alt0000002404
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/ip_address/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-logging-public".audit_logs.ip_address IS 'IP address of the client that initiated the auth event';

