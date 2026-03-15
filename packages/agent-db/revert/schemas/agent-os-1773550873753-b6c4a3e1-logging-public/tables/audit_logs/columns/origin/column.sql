-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/origin/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
  DROP COLUMN origin RESTRICT;


