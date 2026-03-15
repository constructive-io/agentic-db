-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/event/alterations/alt0000000833
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/event/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  ALTER COLUMN event SET NOT NULL;

