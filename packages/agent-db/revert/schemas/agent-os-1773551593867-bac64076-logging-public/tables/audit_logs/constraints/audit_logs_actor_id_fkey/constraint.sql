-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  DROP CONSTRAINT audit_logs_actor_id_fkey;


