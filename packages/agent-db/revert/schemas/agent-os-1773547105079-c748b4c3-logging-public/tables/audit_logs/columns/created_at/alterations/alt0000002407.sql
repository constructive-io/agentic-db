-- Revert: schemas/agent-os-1773547105079-c748b4c3-logging-public/tables/audit_logs/columns/created_at/alterations/alt0000002407


ALTER TABLE "agent-os-1773547105079-c748b4c3-logging-public".audit_logs 
  ALTER COLUMN created_at DROP NOT NULL;


