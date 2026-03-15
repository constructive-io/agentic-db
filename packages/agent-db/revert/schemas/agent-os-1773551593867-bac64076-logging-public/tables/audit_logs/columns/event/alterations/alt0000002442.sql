-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/event/alterations/alt0000002442


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ALTER COLUMN event DROP NOT NULL;


