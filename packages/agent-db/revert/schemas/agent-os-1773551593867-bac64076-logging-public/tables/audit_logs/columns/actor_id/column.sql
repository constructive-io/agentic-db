-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  DROP COLUMN actor_id RESTRICT;


