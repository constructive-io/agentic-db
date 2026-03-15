-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/id/alterations/alt0000002440


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ALTER COLUMN id DROP NOT NULL;


