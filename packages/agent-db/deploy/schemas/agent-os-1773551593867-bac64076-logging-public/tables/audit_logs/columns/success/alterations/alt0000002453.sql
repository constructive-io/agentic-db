-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/success/alterations/alt0000002453
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/success/column


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ALTER COLUMN success SET NOT NULL;

