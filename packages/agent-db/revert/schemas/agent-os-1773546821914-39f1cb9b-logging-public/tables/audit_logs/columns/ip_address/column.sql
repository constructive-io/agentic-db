-- Revert: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/columns/ip_address/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  DROP COLUMN ip_address RESTRICT;


