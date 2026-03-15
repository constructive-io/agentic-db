-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/user_agent/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ADD COLUMN user_agent text;

