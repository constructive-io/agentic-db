-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/alterations/alt0000000829
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
  DISABLE ROW LEVEL SECURITY;

