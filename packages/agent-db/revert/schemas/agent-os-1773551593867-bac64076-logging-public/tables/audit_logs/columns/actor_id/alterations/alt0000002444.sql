-- Revert: schemas/agent-os-1773551593867-bac64076-logging-public/tables/audit_logs/columns/actor_id/alterations/alt0000002444


ALTER TABLE "agent-os-1773551593867-bac64076-logging-public".audit_logs 
  ALTER COLUMN actor_id DROP NOT NULL;


