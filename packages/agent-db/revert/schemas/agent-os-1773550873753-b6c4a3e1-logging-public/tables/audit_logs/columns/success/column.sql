-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-logging-public/tables/audit_logs/columns/success/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-logging-public".audit_logs 
  DROP COLUMN success RESTRICT;


