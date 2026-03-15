-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/event/alterations/alt0000000833
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/event/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
  ALTER COLUMN event SET NOT NULL;

