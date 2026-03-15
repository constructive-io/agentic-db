-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/indexes/audit_logs_event_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/event/column


CREATE INDEX audit_logs_event_idx ON "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs USING BTREE ( event );

