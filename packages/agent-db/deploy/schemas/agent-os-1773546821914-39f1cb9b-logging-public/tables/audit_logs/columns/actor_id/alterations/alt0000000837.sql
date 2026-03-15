-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000000837
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs.actor_id IS 'User who performed the authentication action';

