-- Revert: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/success/alterations/alt0000000844


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  ALTER COLUMN success DROP NOT NULL;


