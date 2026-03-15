-- Revert: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000000846


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  ALTER COLUMN created_at DROP NOT NULL;


