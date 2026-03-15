-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/user_agent/alterations/alt0000002450
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/user_agent/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-logging-public".audit_logs.user_agent IS E'Browser or client user-agent string from the request';

