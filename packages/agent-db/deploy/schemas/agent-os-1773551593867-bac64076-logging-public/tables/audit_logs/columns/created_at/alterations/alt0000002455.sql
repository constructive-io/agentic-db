-- Deploy: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000002455
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ALTER COLUMN created_at SET NOT NULL;

