-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/constraints/audit_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  ADD CONSTRAINT audit_logs_pkey PRIMARY KEY (id);

