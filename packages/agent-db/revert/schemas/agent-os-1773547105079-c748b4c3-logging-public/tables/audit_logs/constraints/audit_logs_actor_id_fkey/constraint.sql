-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/constraints/audit_logs_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  DROP CONSTRAINT audit_logs_actor_id_fkey;


