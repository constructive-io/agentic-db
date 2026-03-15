-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/event/alterations/alt0000002443
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/event/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-logging-public".audit_logs.event IS E'Type of authentication event (e.g. sign_in, sign_up, password_change, verify_email)';

