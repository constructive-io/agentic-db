-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/origin/alterations/alt0000000839
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/origin/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs.origin IS E'Request origin (domain) where the auth event occurred';

