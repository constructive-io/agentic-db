-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000000846


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
  ALTER COLUMN created_at DROP NOT NULL;


