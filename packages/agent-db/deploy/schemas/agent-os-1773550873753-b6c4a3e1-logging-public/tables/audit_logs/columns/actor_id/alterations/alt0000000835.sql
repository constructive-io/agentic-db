-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000000835
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
  ALTER COLUMN actor_id SET NOT NULL;

