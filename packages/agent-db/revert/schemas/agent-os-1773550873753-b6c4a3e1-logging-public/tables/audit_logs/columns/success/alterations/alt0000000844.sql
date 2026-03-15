-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/success/alterations/alt0000000844


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
  ALTER COLUMN success DROP NOT NULL;


