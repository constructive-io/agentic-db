-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/ip_address/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ADD COLUMN ip_address inet;

