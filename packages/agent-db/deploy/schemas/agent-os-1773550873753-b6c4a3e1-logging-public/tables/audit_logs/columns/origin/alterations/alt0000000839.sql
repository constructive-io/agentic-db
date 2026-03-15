-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/origin/alterations/alt0000000839
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/origin/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs.origin IS E'Request origin (domain) where the auth event occurred';

