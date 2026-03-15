-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/origin/alterations/alt0000002448
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/origin/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-logging-public".audit_logs.origin IS E'Request origin (domain) where the auth event occurred';

