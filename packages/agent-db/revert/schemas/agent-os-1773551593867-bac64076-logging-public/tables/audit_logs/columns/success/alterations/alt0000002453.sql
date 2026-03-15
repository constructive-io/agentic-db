-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/success/alterations/alt0000002453


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ALTER COLUMN success DROP NOT NULL;


