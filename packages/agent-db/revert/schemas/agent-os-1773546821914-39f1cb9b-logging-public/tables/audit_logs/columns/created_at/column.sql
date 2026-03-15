-- Revert: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  DROP COLUMN created_at RESTRICT;


