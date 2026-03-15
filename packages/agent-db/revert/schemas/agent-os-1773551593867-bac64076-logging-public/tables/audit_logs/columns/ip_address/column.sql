-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/ip_address/column


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  DROP COLUMN ip_address RESTRICT;


