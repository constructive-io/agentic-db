-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/event/alterations/alt0000000834
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/event/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs.event IS E'Type of authentication event (e.g. sign_in, sign_up, password_change, verify_email)';

